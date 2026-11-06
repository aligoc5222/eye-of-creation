@echo off
title EYE OF CREATION
cd /d "%~dp0"
set "PY="
py -3 --version >NUL 2>&1 && set "PY=py -3"
if not defined PY python --version >NUL 2>&1 && set "PY=python"
if not defined PY (
  echo.
  echo  Python was not found. Install it from https://www.python.org/downloads/
  echo  and tick "Add python.exe to PATH" during setup, then run this again.
  echo.
  pause
  exit /b 1
)
echo Using: %PY%
%PY% -c "import pygame, numpy" >NUL 2>&1
if errorlevel 1 (
  echo Installing pygame-ce + numpy ...
  %PY% -m pip install --upgrade pygame-ce numpy
)
echo Starting EYE OF CREATION ...  (F1 = help, ESC = quit)
%PY% eye_of_creation.py %*
echo.
pause
