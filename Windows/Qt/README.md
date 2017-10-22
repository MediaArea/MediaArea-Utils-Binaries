#### Compile Qt static (32 and 64 bit)

- Download and unzip qt-everywhere-opensource-src-\<version\>.zip archive.

- Install both OpenSSL 32 and 64 bits development packages

- In the  qt-everywhere-opensource-src-\<version\> directory run:

```
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
PATH=C:\OpenSSL-Win32\bin;%PATH%
configure -IC:\OpenSSL-Win32\include -prefix x86 -opensource -confirm-license -static -static-runtime -strip -opengl -angle -no-icu -gif -ico -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -no-libproxy -no-dbus -sql-all qt-sqlite -no-qml-debug -nomake examples -mp -no-sse3 -no-ssse3 -no-sse4.1 -no-sse4.2 -no-avx -no-avx2 -no-avx512 -ssl -openssl -openssl-runtime
nmake
nmake install

nmake clean
nmake confclean

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
PATH=C:\OpenSSL-Win64\bin;%PATH%
configure -IC:\OpenSSL-Win64\include -prefix x64 -opensource -confirm-license -static -static-runtime -strip -opengl -angle -no-icu -gif -ico -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -no-libproxy -no-dbus -sql-all qt-sqlite -no-qml-debug -nomake examples -mp -no-sse3 -no-ssse3 -no-sse4.1 -no-sse4.2 -no-avx -no-avx2 -no-avx512 -ssl -openssl -openssl-runtime
nmake
nmake install
```

- Create files qtbase/x86/bin/qt.conf and qtbase/x64/bin/qt.conf with this content:
```
[Paths]
Prefix=..
```
