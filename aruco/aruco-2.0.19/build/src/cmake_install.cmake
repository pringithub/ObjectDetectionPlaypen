# Install script for directory: /Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "main" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/build/src/libaruco.2.0.19.dylib"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/build/src/libaruco.2.0.dylib"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/build/src/libaruco.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.2.0.19.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.2.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "libaruco.2.0.dylib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "main" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aruco" TYPE FILE FILES
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/ar_omp.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/aruco.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/cameraparameters.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/checkrectcontour.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/cvdrawingutils.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/dictionary.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/exports.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/ippe.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/levmarq.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/marker.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/markerdetector.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/markerlabeler.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/markermap.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/posetracker.h"
    "/Users/pring/Workspace/objectDetectPlaypen/aruco/aruco-2.0.19/src/markerlabelers/dictionary_based.h"
    )
endif()

