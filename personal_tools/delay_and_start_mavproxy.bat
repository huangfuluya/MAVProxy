@echo off
REM 延迟10秒
timeout /t 3 /nobreak > NUL

REM 执行您希望延迟运行的命令
cd D:\work_temp\mavproxy\MAVProxy\MAVProxy
cd ..\

python.exe -m pip install --upgrade build . --user
python.exe .\MAVProxy\mavproxy.py --master=tcp:127.0.0.1:5760 --console --load-module=horizon --load-module=joystick

@REM "mavproxy.exe" "--map" "--master=tcp:127.0.0.1:5760" "--load-module=horizon" "--load-module=joystick"

