CMAKE_MINIMUM_REQUIRED(VERSION 3.1)

set(CTEST_PROJECT_NAME "rose")
set(CTEST_SOURCE_DIRECTORY "C:/cygwin64/home/too1/rose")
set(CTEST_BINARY_DIRECTORY "C:/cygwin64/home/too1/compilation")
set(CTEST_CMAKE_GENERATOR "Visual Studio 14 2015")
set(CTEST_CONFIGURATION_TYPE "Release")
set(CTEST_BUILD_CONFIGURATION "Release")


ctest_empty_binary_directory(${CTEST_BINARY_DIRECTORY})

file(WRITE "${CTEST_BINARY_DIRECTORY}/CMakeCache.txt" "
  BOOST_ROOT:PATH=C:/Boost
  Boost_LIBRARY_DIR:PATH=C:/Boost/lib
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
#ctest_test(BUILD "${CTEST_BINARY_DIRECTORY}" INCLUDE policies)
