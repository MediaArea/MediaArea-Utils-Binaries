#### Custom libcurl from vcpkg

- Install vcpkg

- install zlib for the x86, x64 and arm64 Windows static triplets:
```
vcpkg install zlib:x86-windows-static
vcpkg install zlib:x64-windows-static
vcpkg install zlib:arm64-windows-static
```

- Create the x86, x64 and arm64 Windows dynamic-mt triplets:

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

triplets/community/arm64-windows-dynamic-mt.cmake
```
set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE static)
set(VCPKG_LIBRARY_LINKAGE dynamic)
```

- Copy the installed x86, x64 and arm64 Windows static directories to the corresponding dynamic-mt directories

- Install libcurl:
```
vcpkg install curl:x86-windows-dynamic-mt
vcpkg install curl:x64-windows-dynamic-mt
vcpkg install curl:arm64-windows-dynamic-mt
```
