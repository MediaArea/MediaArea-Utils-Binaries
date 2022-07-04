#### Compile Qt static (32 and 64 bit)

- Download and unzip qt-everywhere-opensource-src-\<version\>.zip archive.

- Install both OpenSSL 32 and 64 bits development packages

- In the  qt-everywhere-opensource-src-\<version\> directory run:

```
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
PATH=C:\OpenSSL-Win32\bin;%PATH%
configure -IC:\OpenSSL-Win64\include -prefix x86 -opensource -confirm-license -static -static-runtime -strip -opengl -angle -no-icu -gif -ico -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -no-libproxy -no-dbus -qt-sqlite -no-qml-debug -nomake examples -mp -ssl -openssl -openssl-runtime -no-feature-d3d12 -no-feature-quickcontrols2-imagine
nmake
nmake install

nmake clean
nmake confclean

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
PATH=C:\OpenSSL-Win64\bin;%PATH%
configure -IC:\OpenSSL-Win64\include -prefix x64 -opensource -confirm-license -static -static-runtime -strip -opengl -angle -no-icu -gif -ico -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -no-libproxy -no-dbus -qt-sqlite -no-qml-debug -nomake examples -mp -ssl -openssl -openssl-runtime -no-feature-d3d12 -no-feature-quickcontrols2-imagine
nmake
nmake install
```

- Create files qtbase/x86/bin/qt.conf and qtbase/x64/bin/qt.conf with this content:
```
[Paths]
Prefix=..
```
