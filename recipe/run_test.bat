set files=%LIBRARY_INC%\GL\freeglut.h ^
          %LIBRARY_INC%\GL\freeglut_ext.h ^
          %LIBRARY_INC%\GL\freeglut_std.h ^
          %LIBRARY_INC%\GL\glut.h ^
          %LIBRARY_LIB%\freeglut.lib ^
          %LIBRARY_BIN%\freeglut.dll

for %%f in (%files%) do (
    if not exist %%f% (
        echo "%%f% NOT found."
        exit 1
    )
)
