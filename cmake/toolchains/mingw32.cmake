# the name of the target operating system
SET(CMAKE_SYSTEM_NAME "Windows")
SET(ARCH   32)

# which compilers to use for C and C++
SET(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
SET(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
SET(CMAKE_RC_COMPILER i686-w64-mingw32-windres)

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH  /usr/i686-w64-mingw32)

# include general MinGW module
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")
include(MinGW)

# Commands for running various external tools
set(BROWSER "start")
set(VRMLVIEW "start")
set(MPICC "mpicc.bat")
set(MPIRUN "mpiexec.exe")
set(PGPLOT "yes") # <- Not actually run, but non-empty indicates available
set(GNUPLOT "gnuplot.exe")

# Plotting options
set(PLOTTER "PGPLOT")
set(PGDEV "/gw")
set(GNUDEV "windows")

# Suffix for executables
set(EXE "exe")
set(SLASH "")
