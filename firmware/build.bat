@echo off
setlocal enabledelayedexpansion

:: 默認不輸出 debug 資訊
set DEBUG=false

:: 解析參數
:parse_args
set "SRC_DIR=."
for %%A in (%*) do (
    if /i "%%A"=="-d" (
        set DEBUG=true
    ) else (
        set "SRC_DIR=%%A"
    )
)

:: 獲取來源目錄的絕對路徑
for %%A in ("%SRC_DIR%") do set "SRC_DIR=%%~fA"

:: 檢查來源目錄是否存在
if not exist "%SRC_DIR%" (
    echo Error: Source directory "%SRC_DIR%" does not exist.
    exit /b 1
)

:: 設定基礎路徑
set "BASE=%~dp0N76E003_BSP"

:: 檢查 N76E003_BSP 是否存在
if not exist "%BASE%" (
    echo Error: N76E003_BSP directory not found.
    echo Please run the following command to initialize the submodule:
    echo git submodule update --init --recursive
    exit /b 1
)

:: 確認 numicro_8051.h 是否存在
if not exist "%BASE%\Library\Device\Include\numicro_8051.h" (
    echo Error: numicro_8051.h not found in %BASE%\Library\Device\Include.
    exit /b 1
)

:: 檢查並移除 Objects 資料夾
set "OBJECTS_DIR=%SRC_DIR%\Objects"
if exist "%OBJECTS_DIR%" (
    echo Objects directory exists. Remove it? [Y/n] (default Y):
    set /p choice=
    if /i "!choice!"=="" set choice=Y
    if /i "!choice!"=="Y" (
        echo Removing Objects directory...
        rmdir /s /q "%OBJECTS_DIR%"
    ) else (
        echo Skipping Objects directory removal.
    )
)

:: 創建 Objects 資料夾
mkdir "%OBJECTS_DIR%"
cd "%OBJECTS_DIR%"

:: 如果啟用 debug 模式，輸出調試資訊
if /i "%DEBUG%"=="true" (
    echo DEBUG: BASE directory = %BASE%
    echo DEBUG: SRC directory = %SRC_DIR%
    echo DEBUG: OBJECTS directory = %OBJECTS_DIR%
)

:: 自動搜索來源目錄下的 .c 文件，排除 main.c
set "SOURCE_FILES="
for %%F in ("%SRC_DIR%\*.c") do (
    if /i not "%%~nxF"=="main.c" (
        set "SOURCE_FILES=!SOURCE_FILES! %%F"
    )
)

if "%SOURCE_FILES%"=="" (
    echo Error: No source files found to compile in "%SRC_DIR%".
    exit /b 1
)

if /i "%DEBUG%"=="true" (
    echo DEBUG: Source files to be compiled:
    echo %SOURCE_FILES%
)

:: 編譯每個來源檔案為 .rel 文件
set "REL_FILES="
for %%F in (%SOURCE_FILES%) do (
    set "OUTPUT_FILE=%%~nF.rel"
    echo Compiling %%~nxF to !OUTPUT_FILE!...
    sdcc -c "%%F" ^
        -o "!OUTPUT_FILE!" ^
        -I "%SRC_DIR%" ^
        -I "%BASE%\Library\Device\Include" ^
        -I "%BASE%\Library\StdDriver\inc" ^
        -D __SDCC__

    if errorlevel 1 (
        echo Error: Failed to compile %%~nxF. Check include paths.
        exit /b 1
    )
    set "REL_FILES=!REL_FILES! !OUTPUT_FILE!"
)

:: 編譯主檔案並連結
if not exist "%SRC_DIR%\main.c" (
    echo Error: main.c not found in "%SRC_DIR%".
    exit /b 1
)

echo Compiling main.c and linking...
sdcc "%SRC_DIR%\main.c" ^
    --code-size 16384 ^
    --iram-size 256 ^
    --xram-size 768 ^
    %REL_FILES% ^
    -I "%SRC_DIR%" ^
    -I "%BASE%\Library\Device\Include" ^
    -I "%BASE%\Library\StdDriver\inc" ^
    -D __SDCC__

if errorlevel 1 (
    echo Error: Failed to link and generate binary. Check include paths and rel files.
    exit /b 1
)

:: 將 HEX 文件轉換為二進制文件
if exist "main.ihx" (
    echo Converting HEX to binary...
    sdobjcopy -Iihex -Obinary main.ihx main.bin
) else (
    echo Error: main.ihx not generated. Linking might have failed.
    exit /b 1
)

:: 顯示檔案大小與路徑
if exist "main.bin" (
    for %%F in (main.bin) do set "BIN_SIZE=%%~zF"
    echo Build completed successfully!
    echo Output file: %OBJECTS_DIR%\main.bin
    echo File size: %BIN_SIZE% bytes
) else (
    echo Error: main.bin not generated.
    exit /b 1
)

exit /b 0

