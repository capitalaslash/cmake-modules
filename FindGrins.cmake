# - Try to find Grins
# Once done this will define
#
#  GRINS_FOUND          - Grins has been successfully found
#  GRINS_INCLUDE_DIRS   - Grins include directories
#  GRINS_LIBRARIES      - Grins libraries
#  GRINS_DEFINITIONS    - Grins definitions
#  GRINS_FLAGS          - Grins flags
#  GRINS_VERSION_STRING - Grins version
#
#  Usage:
#  find_package(Grins)
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#

find_path(GRINS_INCLUDE_DIR grins/grins_version.h
  HINTS ${GRINS_DIR}/include $ENV{GRINS_DIR}/include
  PATH_SUFFIXES grins
)

find_library(GRINS_LIBRARY
  NAMES grins
  HINTS ${GRINS_DIR}/lib $ENV{GRINS_DIR}/lib
)

set(GRINS_LIBRARIES ${GRINS_LIBRARY})
set(GRINS_INCLUDE_DIRS ${GRINS_INCLUDE_DIR})

# handle the QUIETLY and REQUIRED arguments and set GRINS_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Grins
  FOUND_VAR GRINS_FOUND
  REQUIRED_VARS GRINS_LIBRARIES GRINS_INCLUDE_DIRS
)

mark_as_advanced(
  GRINS_INCLUDE_DIR
  GRINS_LIBRARIES
)
