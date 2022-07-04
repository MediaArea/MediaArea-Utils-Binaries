
add_library(Qt5::QtVirtualKeyboardOpenWnnPlugin MODULE IMPORTED)

_populate_VirtualKeyboard_plugin_properties(QtVirtualKeyboardOpenWnnPlugin RELEASE "virtualkeyboard/qtvirtualkeyboard_openwnn.lib")

list(APPEND Qt5VirtualKeyboard_PLUGINS Qt5::QtVirtualKeyboardOpenWnnPlugin)
