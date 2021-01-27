setlocal EnableDelayedExpansion

cd test

:: Compile and run example that links glut with CMake
cmake -G"Visual Studio 15 2017" -A x64 -DCMAKE_BUILD_TYPE=Release .
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

.\test.exe 
if errorlevel 1 exit 1
