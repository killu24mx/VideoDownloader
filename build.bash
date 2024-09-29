#!/bin/bash
EXEC_NAME="./main"


BUILD_DIR="$(dirname "$0")/build"


if [ ! -d "$BUILD_DIR" ]; then
  mkdir "$BUILD_DIR"
  echo "creating build dir..."
fi

cd "$BUILD_DIR" || exit

cmake ..
cmake --build . --config Release
printf "output:\n\n"
$EXEC_NAME



