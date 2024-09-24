@echo off
echo Welcome To InterTree
echo Interface For PythonTree Library
echo Using The Tree Libary For Python
echo tree = Run Tree
echo exit = Exit the program

:start
set /p command=">>> "

if "%command%"=="tree" (
    python tree.py
    goto start
)

if "%command%"=="exit" (
    echo Exiting the mini terminal.
    exit /b
)

rem Execute any other command
cmd /c "%command%"
goto start
