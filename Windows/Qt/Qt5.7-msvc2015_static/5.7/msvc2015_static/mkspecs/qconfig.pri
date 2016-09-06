CONFIG+= release static static_runtime rtti no_plugin_manifest directwrite directwrite2 qpa
host_build {
    QT_ARCH = i386
    QT_TARGET_ARCH = i386
} else {
    QT_ARCH = i386
}
QT_CONFIG += minimal-config small-config medium-config large-config full-config release static static_runtime zlib no-gif jpeg png doubleconversion freetype harfbuzz accessibility audio-backend no-qml-debug directwrite directwrite2 native-gestures qpa concurrent
#versioning 
QT_VERSION = 5.7.0
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 7
QT_PATCH_VERSION = 0

QT_EDITION = OpenSource
QT_DEFAULT_QPA_PLUGIN = qwindows
