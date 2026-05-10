@echo off
:: 再次确保编码无误，>nul 用于隐藏 "Active code page: 65001" 提示
chcp 65001 >nul

:: 强制声明终端环境为 UTF-8，解决 Bun 等现代 CLI 工具的底层输出乱码问题
set LANG=zh_CN.UTF-8
set LC_ALL=zh_CN.UTF-8
set "CLAUDE_CONFIG_DIR=你的目录\CLAUDE_CONFIG_DIR"
:: 获取正确的中文路径
set "TARGET_DIR=%cd%"

:: 环境
set "PYTHON=D:\py-project\python\miniconda3\envs\python310"
set "PYTHONScripts=D:\py-project\python\miniconda3\envs\python310\Scripts"
set path=%PYTHON%;%PYTHONScripts%;%path%
set CLAUDE_CODE_USE_POWERSHELL_TOOL=1
set PLAYWRIGHT_BROWSERS_PATH=D:\py-project\python\ms-playwright
:: 切换到项目目录
cd /d "你的目录"

:: 启动 Bun
D:\java-project\bun-windows-x64\bun.exe --env-file=.env --preload ./set-cwd.ts ./src/entrypoints/cli.tsx %*
pause