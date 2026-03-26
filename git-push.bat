@echo off
chcp 65001 >nul

echo ========================================
echo       Git 自动提交推送工具
echo ========================================
echo.

set /p MESSAGE="请输入本次更新的内容: "

if "!MESSAGE!"=="" (
    echo [错误] 更新内容不能为空！
    pause
    exit /b 1
)

echo.
echo [1/3] git add .
git add .
echo.

echo [2/3] git commit -m "!MESSAGE!"
git commit -m "!MESSAGE!"
echo.

echo [3/3] git push
git push
echo.

echo ========================================
echo       全部操作完成！
echo ========================================
pause
