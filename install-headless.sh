#!/usr/bin/env bash
# Filename: install-headless.sh
JAR_URL="https://github.com/vizoros/peer/releases/latest/download/vfy-install.jar"

# Terminal configuration (minimum values for progressbar)
MIN_ROWS=35
MIN_COLS=125

# Function to resize terminal to minimum dimensions
resizeterminal() {
    local MIN_ROWS=${1:-$MIN_ROWS}
    local CUR_ROWS CUR_COLS
    if command -v tput >/dev/null 2>&1; then
       CUR_ROWS=$(tput lines 2>/dev/null)
       CUR_COLS=$(tput cols 2>/dev/null)
    fi
    CUR_ROWS=${CUR_ROWS:-$MIN_ROWS}
    CUR_COLS=${CUR_COLS:-$MIN_COLS}
    local NEW_ROWS=$(( CUR_ROWS < MIN_ROWS ? MIN_ROWS : CUR_ROWS ))
    local NEW_COLS=$(( CUR_COLS < MIN_COLS ? MIN_COLS : CUR_COLS ))
    if [ "$NEW_ROWS" -ne "$CUR_ROWS" ] || [ "$NEW_COLS" -ne "$CUR_COLS" ]; then
       printf '\e[8;%d;%dt' "$NEW_ROWS" "$NEW_COLS"
    fi
}
# Set console size (progressbar requirement)
resizeterminal

detect_java_version() {
    local version_raw
    version_raw=$(java -version 2>&1 | grep -i version | head -1)
    if [[ "$version_raw" =~ \"([0-9]+)(\.([0-9]+))?(\.([0-9]+))? ]]; then
        local major=${BASH_REMATCH[1]}
        # If major is 1, use minor version (Java 8 and below)
        if [ "$major" = "1" ] && [ -n "${BASH_REMATCH[3]}" ]; then
            JAVA_MAJOR=${BASH_REMATCH[3]}
        else
            JAVA_MAJOR=$major
        fi
    else
        echo "[ERROR] Failed to detect Java version."
        exit 1
    fi
}

if [ ! -f "vfy-install.jar" ]; then
    if ! curl -fsLO "$JAR_URL"; then
        echo "Error: Failed to download vfy-install.jar"
        echo "Please check your internet connection and try again."
        exit 1
    fi
fi

if ! command -v java >/dev/null 2>&1; then
    echo "Error: Java is not installed or not in PATH"
    echo "Please install Java 8 or later from https://adoptium.net/"
    exit 1
fi

# Detect Java version
detect_java_version

JAVA_OPTS=""
# Add Java 9+ options if needed
if [ "$JAVA_MAJOR" -ge 9 ]; then
    JAVA_OPTS="--add-opens=java.base/java.time=ALL-UNNAMED \
    --add-opens=java.base/java.lang=ALL-UNNAMED \
    --add-opens=java.base/java.math=ALL-UNNAMED \
    --add-opens=java.base/java.util=ALL-UNNAMED \
    --add-opens=java.base/java.util.concurrent=ALL-UNNAMED \
    --add-opens=java.base/java.net=ALL-UNNAMED \
    --add-opens=java.base/java.text=ALL-UNNAMED \
    --add-opens=java.sql/java.sql=ALL-UNNAMED"
fi

# Add Java 22+ options if needed
if [ "$JAVA_MAJOR" -ge 22 ]; then
    JAVA_OPTS="$JAVA_OPTS --enable-native-access=ALL-UNNAMED"
fi

# Run installation
exec java $JAVA_OPTS -DHEADLESS -jar vfy-install.jar "$@"
