@echo off
if "%SUFFIX%"=="" (
  set SUFFIX=1
) else (
  set /A SUFFIX=SUFFIX+1
)
echo Suffix: %SUFFIX%
set RELEASE_VERSION=1.0.%SUFFIX%
call vsclean
rd /S/Q C:\Users\MBV\Personal\Dev\Dotnet\Main\LocalNugetSource
mkdir C:\Users\MBV\Personal\Dev\Dotnet\Main\LocalNugetSource
dotnet pack
dotnet nuget push bin/Release/MikeNakis.GlobalConfig.%RELEASE_VERSION%.nupkg --source C:\Users\MBV\Personal\Dev\Dotnet\Main\LocalNugetSource
