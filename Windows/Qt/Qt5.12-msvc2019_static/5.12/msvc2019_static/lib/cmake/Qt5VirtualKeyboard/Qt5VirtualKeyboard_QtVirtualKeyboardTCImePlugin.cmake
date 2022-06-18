
add_library(Qt5::QtVirtualKeyboardTCImePlugin MODULE IMPORTED)

_populate_VirtualKeyboard_plugin_properties(QtVirtualKeyboardTCImePlugin RELEASE "virtualkeyboard/qtvirtualkeyboard_tcime.lib")

list(APPEND Qt5VirtualKeyboard_PLUGINS Qt5::QtVirtualKeyboardTCImePlugin)
