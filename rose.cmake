CMAKE_MINIMUM_REQUIRED(VERSION 3.1)

set(CTEST_PROJECT_NAME "ROSE")
set(CTEST_SOURCE_DIRECTORY "C:/jenkins/workspace/104-rose-minimum_config-make_all-edg-cmake-windows/rose")
set(CTEST_BINARY_DIRECTORY "C:/jenkins/workspace/104-rose-minimum_config-make_all-edg-cmake-windows/ROSE_BIN")
set(CTEST_CMAKE_GENERATOR "Visual Studio 14 2015 Win64")
set(CTEST_CONFIGURATION_TYPE "Release")
set(CTEST_BUILD_CONFIGURATION "Release")
set(CTEST_UPDATE_COMMAND "C:/Program Files (x86)/Git/bin/git.exe")


ctest_empty_binary_directory(${CTEST_BINARY_DIRECTORY})

file(WRITE "${CTEST_BINARY_DIRECTORY}/CMakeCache.txt" "
  BOOST_ROOT:PATH=C:/local/boost/1_59_0
  Boost_LIBRARY_DIR:PATH=C:/local/boost/1_59_0/lib64-msvc-14.0
  Boost_USE_MULTITHREADED:BOOL=ON
  enable-cuda:BOOL=OFF
  enable-fortran:BOOL=OFF
  enable-java:BOOL=OFF
  enable-opencl:BOOL=OFF
  enable-php:BOOL=OFF
  enable-rosehpct:BOOL=OFF
  disable-binary-analysis-tests:BOOL=ON
")

ctest_start(Experimental)
ctest_configure(BUILD "${CTEST_BINARY_DIRECTORY}")

ctest_read_custom_files("${CTEST_BINARY_DIRECTORY}")

ctest_build(BUILD "${CTEST_BINARY_DIRECTORY}")
ctest_test(BUILD "${CTEST_BINARY_DIRECTORY}" INCLUDE policies)
