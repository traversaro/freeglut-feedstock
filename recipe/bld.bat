mkdir build && cd build
cmake ^
	-G "NMake Makefiles"                     ^
	-DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
	-DCMAKE_INSTALL_BINDIR=%LIBRARY_BIN%     ^
	-DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB%     ^
	-DCMAKE_INSTALL_INCLUDEDIR=%LIBRARY_INC% ^
	-DFREEGLUT_BUILD_DEMOS=OFF               ^
	..

cmake --build . --config Release --target INSTALL
