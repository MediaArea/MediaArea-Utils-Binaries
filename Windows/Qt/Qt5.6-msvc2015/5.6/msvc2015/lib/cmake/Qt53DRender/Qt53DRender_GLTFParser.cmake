
add_library(Qt5::GLTFParser MODULE IMPORTED)

_populate_3DRender_plugin_properties(GLTFParser RELEASE "sceneparsers/gltfsceneparser.dll")
_populate_3DRender_plugin_properties(GLTFParser DEBUG "sceneparsers/gltfsceneparserd.dll")

list(APPEND Qt53DRender_PLUGINS Qt5::GLTFParser)
