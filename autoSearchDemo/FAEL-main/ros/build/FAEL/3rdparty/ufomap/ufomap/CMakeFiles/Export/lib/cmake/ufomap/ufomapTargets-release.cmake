#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "UFO::Map" for configuration "Release"
set_property(TARGET UFO::Map APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(UFO::Map PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libMap.so.1.0.0"
  IMPORTED_SONAME_RELEASE "libMap.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS UFO::Map )
list(APPEND _IMPORT_CHECK_FILES_FOR_UFO::Map "${_IMPORT_PREFIX}/lib/libMap.so.1.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
