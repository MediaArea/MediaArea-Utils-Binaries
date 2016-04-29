
add_library(Qt5::AssimpParserPlugin MODULE IMPORTED)

_populate_3DRender_plugin_properties(AssimpParserPlugin RELEASE "sceneparsers/assimpsceneparser.dll")
_populate_3DRender_plugin_properties(AssimpParserPlugin DEBUG "sceneparsers/assimpsceneparserd.dll")

list(APPEND Qt53DRender_PLUGINS Qt5::AssimpParserPlugin)
