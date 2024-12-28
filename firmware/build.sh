#!/bin/bash

# 默認不輸出 debug 資訊
DEBUG=false

# 解析參數
while getopts "d" opt; do
  case $opt in
    d)
      DEBUG=true
      ;;
    *)
      echo "Usage: $0 [-d] <source_directory>"
      exit 1
      ;;
  esac
done

# 獲取最後的非選項參數作為來源目錄
shift $((OPTIND - 1))
SRC_DIR=$(realpath "${1:-.}")

# 檢查來源目錄是否存在
if [ ! -d "$SRC_DIR" ]; then
    echo "Error: Source directory $SRC_DIR does not exist."
    exit 1
fi

# 設定基礎路徑為絕對路徑
BASE=$(realpath ./N76E003_BSP)

# 檢查 N76E003_BSP 是否存在
if [ ! -d "$BASE" ]; then
    echo "Error: N76E003_BSP directory not found."
    echo "Please run the following command to initialize the submodule:"
    echo "  git submodule update --init --recursive"
    exit 1
fi

# 確認 numicro_8051.h 是否存在
if [ ! -f "$BASE/Library/Device/Include/numicro_8051.h" ]; then
    echo "Error: numicro_8051.h not found in $BASE/Library/Device/Include."
    exit 1
fi

# 確保 Objects 資料夾在當前專案目錄下
OBJECTS_DIR="$SRC_DIR/Objects"
if [ -d "$OBJECTS_DIR" ]; then
    read -p "Objects directory exists. Remove it? [Y/n] (default Y): " choice
    choice=${choice:-Y}
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        echo "Removing Objects directory..."
        rm -rf "$OBJECTS_DIR"
    else
        echo "Skipping Objects directory removal."
    fi
fi

# 創建 Objects 資料夾
mkdir -p "$OBJECTS_DIR"
cd "$OBJECTS_DIR"

# 如果啟用 debug 模式，輸出調試資訊
if [ "$DEBUG" = true ]; then
    echo "DEBUG: BASE directory = $BASE"
    echo "DEBUG: SRC directory = $SRC_DIR"
    echo "DEBUG: OBJECTS directory = $OBJECTS_DIR"
    echo "DEBUG: Checking include paths and file existence..."
    ls -l "$BASE/Library/Device/Include/numicro_8051.h"
    ls -l "$BASE/Library/StdDriver/inc"
fi

# 自動搜索來源目錄下的 .c 文件，排除 main.c
SOURCE_FILES=$(find "$SRC_DIR" -maxdepth 1 -type f -name "*.c" ! -name "main.c")

if [ -z "$SOURCE_FILES" ]; then
    echo "Error: No source files found to compile in $SRC_DIR."
    exit 1
fi

if [ "$DEBUG" = true ]; then
    echo "DEBUG: Source files to be compiled:"
    echo "$SOURCE_FILES"
fi

# 編譯每個來源檔案為 .rel 文件
REL_FILES=()
for FILE in $SOURCE_FILES; do
    OUTPUT_FILE=$(basename "$FILE" .c).rel
    echo "Compiling $(basename "$FILE") to $OUTPUT_FILE..."
    sdcc -c "$FILE" \
        -o "$OUTPUT_FILE" \
        -I "$SRC_DIR" \
        -I "$BASE/Library/Device/Include" \
        -I "$BASE/Library/StdDriver/inc" \
        -D __SDCC__

    if [ $? -ne 0 ]; then
        echo "Error: Failed to compile $(basename "$FILE"). Check include paths."
        exit 1
    fi
    REL_FILES+=("$OUTPUT_FILE")
done

# 編譯主檔案並連結
MAIN_FILE="$SRC_DIR/main.c"
if [ ! -f "$MAIN_FILE" ]; then
    echo "Error: main.c not found in $SRC_DIR."
    exit 1
fi

echo "Compiling main.c and linking..."
sdcc "$MAIN_FILE" \
    --code-size 16384 \
    --iram-size 256 \
    --xram-size 768 \
    "${REL_FILES[@]}" \
    -I "$SRC_DIR" \
    -I "$BASE/Library/Device/Include" \
    -I "$BASE/Library/StdDriver/inc" \
    -D __SDCC__

if [ $? -ne 0 ]; then
    echo "Error: Failed to link and generate binary. Check include paths and rel files."
    exit 1
fi

# 將 HEX 文件轉換為二進制文件
echo "Converting HEX to binary..."
if [ -f "main.ihx" ]; then
    sdobjcopy -Iihex -Obinary main.ihx main.bin
else
    echo "Error: main.ihx not generated. Linking might have failed."
    exit 1
fi

# 顯示檔案大小與路徑
if [ -f "main.bin" ]; then
    BIN_SIZE=$(stat -f%z main.bin) # macOS 下的 stat
    echo "Build completed successfully!"
    echo "Output file: $OBJECTS_DIR/main.bin"
    echo "File size: $BIN_SIZE bytes"
else
    echo "Error: main.bin not generated."
    exit 1
fi

