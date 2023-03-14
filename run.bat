@echo off
chcp 65001
if "%1"=="" goto usage
if "%2"=="" goto usage
if not exist %2 (
  echo %2 不存在, 請確認韌體路徑
  goto :end
)

:next
.\avrdude.exe "-C.\avrdude.conf"  -v -V -patmega328p -carduino "-P%1" -b57600 -D "-Uflash:w:%2:i"
set /p dummy="燒錄完成, 請換下一片後按 Enter 繼續... (輸入 q 離開)"
)

if "%dummy%"=="q" (
    goto end
) else (
    goto next
)
:usage
echo 用法
echo    run 序列埠  韌體檔路徑

:end
