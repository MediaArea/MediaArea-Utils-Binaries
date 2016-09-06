#### Compile Qt static (32 and 64 bit)

- Download and unzip qt-everywhere-opensource-src-\<version\>.zip archive.

- In the  qt-everywhere-opensource-src\-<version\> directory run:

```
cd qtbase
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86
configure -prefix x86 -release -opensource -confirm-license -static -static-runtime -strip -no-opengl -no-icu -no-gif -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -no-ssl -no-openssl -no-libproxy -no-dbus -no-sql-sqlite -no-qml-debug -nomake examples -mp -no-sse2 -no-sse3 -no-ssse3 -no-sse4.1 -no-sse4.2 -no-avx -no-avx2 -no-avx512
nmake
nmake install

nmale clean
nmake confclean

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
configure -prefix x64 -release -opensource -confirm-license -static -static-runtime -strip -no-opengl -no-icu -no-gif -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -no-ssl -no-openssl -no-libproxy -no-dbus -no-sql-sqlite -no-qml-debug -nomake examples -mp -no-sse2 -no-sse3 -no-ssse3 -no-sse4.1 -no-sse4.2 -no-avx -no-avx2 -no-avx512
nmake
nmake install
```

Create files qtbase/x86/bin/qt.conf and qtbase/x64/bin/qt.conf with this content:
```
[Paths]
Prefix=..
```
