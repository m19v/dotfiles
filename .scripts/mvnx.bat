@echo off

if "%1"=="" (
  echo.
  echo error: missing argument
  goto usage
) else (
  if "%1"=="-h" goto usage
  if "%1"=="--help" goto usage

  if "%1" == "--settings-a" set M2_HOME=D:\bin\mvn\3.8.6
  if "%1" == "--default" set M2_HOME=D:\bin\mvn\3.9.1
)

if "%~2" == "--global" (
  setx M2_HOME "%M2_HOME%" /M
)

:setpath
set Path=%M2_HOME%\bin;%Path%
echo flag(s) %~1 %~2 activated.
echo.
mvn --version
goto end

:usage
echo.
echo mvnx sets specific maven version and settings
echo.
echo usage: mvnx [options] [scope]
echo.
echo options:
echo -h, --help      Display this help message
echo --default       Set default maven and settings
echo --settings-a    Set maven with settings-a settings
echo.
echo scope:
echo --global        Set maven with selected settings globally (admin rights required)
exit /b

:end
