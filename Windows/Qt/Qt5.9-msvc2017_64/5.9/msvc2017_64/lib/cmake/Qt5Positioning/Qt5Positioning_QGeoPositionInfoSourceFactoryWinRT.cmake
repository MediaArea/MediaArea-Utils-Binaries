
add_library(Qt5::QGeoPositionInfoSourceFactoryWinRT MODULE IMPORTED)

_populate_Positioning_plugin_properties(QGeoPositionInfoSourceFactoryWinRT RELEASE "position/qtposition_winrt.dll")
_populate_Positioning_plugin_properties(QGeoPositionInfoSourceFactoryWinRT DEBUG "position/qtposition_winrtd.dll")

list(APPEND Qt5Positioning_PLUGINS Qt5::QGeoPositionInfoSourceFactoryWinRT)
