
add_library(Qt5::QGeoServiceProviderFactoryItemsOverlay MODULE IMPORTED)

_populate_Location_plugin_properties(QGeoServiceProviderFactoryItemsOverlay RELEASE "geoservices/qtgeoservices_itemsoverlay.dll")
_populate_Location_plugin_properties(QGeoServiceProviderFactoryItemsOverlay DEBUG "geoservices/qtgeoservices_itemsoverlayd.dll")

list(APPEND Qt5Location_PLUGINS Qt5::QGeoServiceProviderFactoryItemsOverlay)
