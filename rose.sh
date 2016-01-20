LOG="C:\jenkins\workspace\104-rose-minimum_config-make_all-edg-cmake-windows\ROSE_BIN\rose.log"
"C:\Users\hudson-rose\development\opt\cmake\3.3.2\bin\ctest.exe" -S "C:\jenkins\jenkins-build-scripts\integration\104-rose-minimum_config-make_all-edg-cmake-windows\rose.cmake" -VV -O "$LOG" || exit 1

if grep -q "Error in read script" "$LOG"; then
  exit 1
else
  exit 0
fi

