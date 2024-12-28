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
      echo "Usage: $0 [-d]"
      exit 1
      ;;
  esac
done

# 設定基礎路徑為絕對路徑
BASE=$(realpath ../N76E003_BSP)

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

# 提供選項移除 Objects 資料夾
if [ -d "./Objects" ]; then
    read -p "Objects directory exists. Remove it? [Y/n] (default Y): " choice
    choice=${choice:-Y}
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        echo "Removing Objects directory..."
        rm -rf ./Objects
    else
        echo "Skipping Objects directory removal."
    fi
fi

# 確保 Objects 資料夾存在
mkdir -p ./Objects
cd ./Objects

# 如果啟用 debug 模式，輸出調試資訊
if [ "$DEBUG" = true ]; then
    echo "DEBUG: BASE directory = $BASE"
    echo "DEBUG: Checking include paths and file existence..."
    ls -l "$BASE/Library/Device/Include/numicro_8051.h"
    ls -l "$BASE/Library/StdDriver/inc"
fi

# 編譯 pt6961.c
echo "Compiling pt6961.c..."
sdcc -c ../pt6961.c \
    -I ../. \
    -I "$BASE/Library/Device/Include" \
    -I "$BASE/Library/StdDriver/inc" \
    -D __SDCC__

if [ $? -ne 0 ]; then
    echo "Error: Failed to compile pt6961.c. Check include paths."
    exit 1
fi

# 編譯 clock.c
echo "Compiling clock.c..."
sdcc -c ../clock.c \
    -I ../. \
    -I "$BASE/Library/Device/Include" \
    -I "$BASE/Library/StdDriver/inc" \
    -D __SDCC__

if [ $? -ne 0 ]; then
    echo "Error: Failed to compile clock.c. Check include paths."
    exit 1
fi

# 編譯 main.c 並連結生成二進制檔案
echo "Linking and generating binary..."
sdcc ../main.c \
    --code-size 16384 \
    --iram-size 256 \
    --xram-size 768 \
    pt6961.rel clock.rel \
    -I ../. \
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
    echo "Output file: $(pwd)/main.bin"
    echo "File size: $BIN_SIZE bytes"
else
    echo "Error: main.bin not generated."
    exit 1
fi

