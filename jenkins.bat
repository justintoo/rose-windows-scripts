SET BOOST_ROOT="C:/Program Files (x86)/boost/boost_1_47"

rd /S /Q C:\jenkins\jenkins-build-scripts
if ERRORLEVEL 1 (
  @echo [FATAL] Could not remove jenkins-build-scripts directory
  exit
)

call git clone rose-dev@rosecompiler1.llnl.gov:jenkins/jenkins-build-scripts C:\jenkins\jenkins-build-scripts
if ERRORLEVEL 1 (
  @echo [FATAL] Could not clone the jenkins-build-scripts
  exit
)

C:\jenkins\jenkins-build-scripts\integration\104-rose-minimum_config-make_all-edg-cmake-windows\rose.bat
if ERRORLEVEL 1 (
  @echo [FATAL] Failure during execution of rose.bat
  exit
)
