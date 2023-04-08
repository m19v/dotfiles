@echo off

if "%1"=="" (
  echo.
  echo error: missing argument
  goto usage
) else (
  if "%1"=="-h" goto usage
  if "%1"=="--help" goto usage

  if "%1" == "--8" set JAVA_HOME=D:\bin\jdk\8u362-b09
  if "%1" == "--11" set JAVA_HOME=D:\bin\jdk\11.0.2
  if "%1" == "--17" set JAVA_HOME=D:\bin\jdk\17.0.5+8
)

if "%~2" == "--global" (
  setx JAVA_HOME "%JAVA_HOME%" /M
)

set Path=%JAVA_HOME%\bin;%Path%
echo flag(s) %~1 %~2 activated.
echo.
java --version
goto end

:usage
echo.
echo javax sets java version
echo.
echo usage: javax [options] [scope]
echo.
echo options:
echo -h, --help      Display this help message
echo --17            Set java version to 17
echo.
echo scope:
echo --global        Set selected java version globally (admin rights required)
exit /b

:end
