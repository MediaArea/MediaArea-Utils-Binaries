
add_library(Qt5::AssimpSceneImportPlugin MODULE IMPORTED)

_populate_3DRender_plugin_properties(AssimpSceneImportPlugin RELEASE "sceneparsers/assimpsceneimport.lib")

list(APPEND Qt53DRender_PLUGINS Qt5::AssimpSceneImportPlugin)
