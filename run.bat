@echo off
if "%1"=="" goto usage
if "%2"=="" goto usage
if not exist %2 (
  echo %2 不存在, 請確認韌體路徑
  goto :end
)

.\avrdude.exe "-C.\avrdude.conf"  -v -V -patmega328p -carduino "-P%1" -b57600 -D "-Uflash:w:%2:i"
goto end

:usage
echo 用法
echo    run 序列埠  韌體檔路徑

:end
