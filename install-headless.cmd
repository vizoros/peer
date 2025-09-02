@echo off
:: Filename install-headless.cmd
set JAR_URL=https://github.com/vizoros/peer/releases/latest/download/vfy-install.jar

if not exist "vfy-install.jar" (
    curl -fsLO "%JAR_URL%"
    if errorlevel 1 (
        echo Error: Failed to download vfy-install.jar
        echo Please check your internet connection and try again.
        exit /b 1
    )
)

where java >nul 2>nul
if errorlevel 1 (
    echo Error: Java is not installed or not in PATH
    echo Please install Java 8 or later from https://adoptium.net/
    exit /b 1
)

for /f "tokens=2 delims=\ " %%v in ('java -version 2^>^&1 ^| findstr /i "version"') do (
    set JAVA_VERSION_RAW=%%v
)

if "%JAVA_VERSION_RAW%"=="" (
    echo [ERROR] Failed to detect Java version.
    exit /b 1
)

for /f "tokens=1-3 delims=._" %%a in ("%JAVA_VERSION_RAW%") do (
    set JAVA_MAJOR=%%a
    set JAVA_MINOR=%%b
)

:: Handle Java 1.8 and below
if "%JAVA_MAJOR%"=="1" set JAVA_MAJOR=%JAVA_MINOR%


set JAVA_OPTS=
:: Add Java 9+ options if needed
if %JAVA_MAJOR% GEQ 9 (
    set JAVA_OPTS=--add-opens=java.base/java.time=ALL-UNNAMED ^
    --add-opens=java.base/java.lang=ALL-UNNAMED ^
    --add-opens=java.base/java.math=ALL-UNNAMED ^
    --add-opens=java.base/java.util=ALL-UNNAMED ^
    --add-opens=java.base/java.util.concurrent=ALL-UNNAMED ^
    --add-opens=java.base/java.net=ALL-UNNAMED ^
    --add-opens=java.base/java.text=ALL-UNNAMED ^
    --add-opens=java.sql/java.sql=ALL-UNNAMED
)

:: Add Java 22+ options if needed
if %JAVA_MAJOR% GEQ 22 (
    set JAVA_OPTS=%JAVA_OPTS% --enable-native-access=ALL-UNNAMED
)

:: Run the application
call java %JAVA_OPTS% -DHEADLESS -jar vfy-install.jar %*

exit /b %ERRORLEVEL%
