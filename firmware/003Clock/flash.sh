#!/bin/bash

# 切換到 Objects 資料夾
cd ./Objects || {
    echo "Error: Failed to switch to ./Objects directory."
    exit 1
}

# 檢查 nulink_8051ot 是否在 PATH 中
if ! command -v nulink_8051ot &> /dev/null; then
    echo "Error: nulink_8051ot command not found. Please ensure it is installed and in your PATH."
    exit 1
fi

# 擦除 APROM
echo "Erasing APROM..."
nulink_8051ot -e APROM
if [ $? -ne 0 ]; then
    echo "Error: Failed to erase APROM."
    exit 1
fi

# 燒錄 main.bin 到 APROM
echo "Writing main.bin to APROM..."
nulink_8051ot -w APROM main.bin
if [ $? -ne 0 ]; then
    echo "Error: Failed to write main.bin to APROM."
    exit 1
fi

# 驗證燒錄內容
echo "Verifying main.bin in APROM..."
nulink_8051ot -v APROM main.bin
if [ $? -ne 0 ]; then
    echo "Error: Verification failed."
    exit 1
fi

echo "Flashing completed successfully!"

