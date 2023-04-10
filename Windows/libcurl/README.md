#### Custom libcurl from vcpkg

- Install vcpkg

- install zlib for the x86 and x64-windows-static triplets:
```
vcpkg install zlib:x86-windows-static
vcpkg install zlib:x64-windows-static
```

- Create the x86 and x64-windows-dynamic-mt triplets:

triplets/community/x86-windows-dynamic-mt.cmake
```
set(VCPKG_TARGET_ARCHITECTURE x86)
set(VCPKG_CRT_LINKAGE static)
set(VCPKG_LIBRARY_LINKAGE dynamic)
```

triplets/community/x64-windows-dynamic-mt.cmake
```
set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE static)
set(VCPKG_LIBRARY_LINKAGE dynamic)
```
- Copy installed/x86 and x64-windows-static directories to installed/x86 and x64-windows-dynamic-mt

- Install libcurl:
```
vcpkg install curl:x86-windows-dynamic-mt
vcpkg install curl:x64-windows-dynamic-mt
```
