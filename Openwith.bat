@echo off
chcp 65001 >nul

set dcpath=
echo 添加doge-code右键菜单...

REM ; 1. 为【文件夹空白处】添加DogeCode右键菜单
Reg.exe add "HKCR\Directory\Background\shell\DogeCode" /ve /t REG_SZ /d "doge-code Here" /f
Reg.exe add "HKCR\Directory\Background\shell\DogeCode" /v "Icon" /t REG_SZ /d "%dcpath%\claudecode.ico" /f
Reg.exe add "HKCR\Directory\Background\shell\DogeCode\command" /ve /t REG_SZ /d "cmd.exe /k chcp 65001 >nul && cd /d \"%%V\" && \"%dcpath%\CC-HH.cmd\"" /f

REM ; 2. 为【选中的文件夹图标】添加DogeCode右键菜单
Reg.exe add "HKCR\Directory\shell\DogeCode" /ve /t REG_SZ /d "doge-code Here" /f
Reg.exe add "HKCR\Directory\shell\DogeCode" /v "Icon" /t REG_SZ /d "%dcpath%\claudecode.ico" /f
Reg.exe add "HKCR\Directory\shell\DogeCode\command" /ve /t REG_SZ /d "cmd.exe /k chcp 65001 >nul && cd /d \"%%1\" && \"%dcpath%\CC-HH.cmd\"" /f

echo 主程序完成，开始退出
timeout /t 1 /nobreak
