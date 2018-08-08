#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TKService" for configuration "Release"
set_property(TARGET TKService APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TKService PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libTKService.7.2.0.dylib"
  IMPORTED_SONAME_RELEASE "libTKService.7.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKService )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKService "${_IMPORT_PREFIX}/lib/libTKService.7.2.0.dylib" )

# Import target "TKV3d" for configuration "Release"
set_property(TARGET TKV3d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TKV3d PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libTKV3d.7.2.0.dylib"
  IMPORTED_SONAME_RELEASE "libTKV3d.7.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKV3d )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKV3d "${_IMPORT_PREFIX}/lib/libTKV3d.7.2.0.dylib" )

# Import target "TKOpenGl" for configuration "Release"
set_property(TARGET TKOpenGl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TKOpenGl PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libTKOpenGl.7.2.0.dylib"
  IMPORTED_SONAME_RELEASE "libTKOpenGl.7.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKOpenGl )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKOpenGl "${_IMPORT_PREFIX}/lib/libTKOpenGl.7.2.0.dylib" )

# Import target "TKMeshVS" for configuration "Release"
set_property(TARGET TKMeshVS APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TKMeshVS PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libTKMeshVS.7.2.0.dylib"
  IMPORTED_SONAME_RELEASE "libTKMeshVS.7.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKMeshVS )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKMeshVS "${_IMPORT_PREFIX}/lib/libTKMeshVS.7.2.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
