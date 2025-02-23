@echo off
setlocal

REM 获取当前批处理文件的目录
set CURRENT_DIR=%~dp0

REM 转换Windows路径到Cygwin路径
set CYGWIN_DIR=%CURRENT_DIR:C:\=/cygdrive/c/%
set CYGWIN_DIR=%CYGWIN_DIR:\=/%

start "" "delay_and_start_mavproxy.bat"

REM 运行Cygwin脚本
C:\cygwin64\bin\bash --login -c "cd %CYGWIN_DIR% && ./\sitl.sh %*"



pause
endlocal
