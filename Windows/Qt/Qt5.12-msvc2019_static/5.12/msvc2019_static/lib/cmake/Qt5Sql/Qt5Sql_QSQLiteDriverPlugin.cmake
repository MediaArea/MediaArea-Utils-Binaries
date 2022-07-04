
add_library(Qt5::QSQLiteDriverPlugin MODULE IMPORTED)

_populate_Sql_plugin_properties(QSQLiteDriverPlugin RELEASE "sqldrivers/qsqlite.lib")

list(APPEND Qt5Sql_PLUGINS Qt5::QSQLiteDriverPlugin)
