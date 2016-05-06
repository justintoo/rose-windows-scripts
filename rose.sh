LOG="C:\cygwin64\home\too1\compilation\rose.log"

ctest.exe -S "C:\cygwin64\home\too1\compilation\rose-windows-scripts\rose.cmake" -VV -O "$LOG" || exit 1

if grep -q "Error in read script" "$LOG"; then
  exit 1
else
  exit 0
fi

