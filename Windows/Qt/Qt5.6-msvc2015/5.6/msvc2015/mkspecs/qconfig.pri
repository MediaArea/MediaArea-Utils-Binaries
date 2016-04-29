CONFIG+= release shared rtti no_plugin_manifest directwrite qpa
host_build {
    QT_ARCH = i386
    QT_TARGET_ARCH = i386
} else {
    QT_ARCH = i386
}
QT_CONFIG += minimal-config small-config medium-config large-config full-config debug_and_release build_all debug release shared zlib dynamicgl png freetype harfbuzz build_all accessibility opengl ssl openssl dbus audio-backend directwrite native-gestures qpa concurrent
#versioning 
QT_VERSION = 5.6.0
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 6
QT_PATCH_VERSION = 0

QT_EDITION = OpenSource
QT_LICHECK = licheck.exe
QT_RELEASE_DATE = 2015-12-15
