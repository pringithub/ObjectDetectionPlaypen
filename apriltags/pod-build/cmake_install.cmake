# Install script for directory: /Users/pring/Workspace/apriltags

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/pring/Workspace/apriltags/build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/pring/Workspace/apriltags/pod-build/lib/libapriltags.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libapriltags.a")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/AprilTags" TYPE FILE FILES
    "/Users/pring/Workspace/apriltags/AprilTags/Edge.h"
    "/Users/pring/Workspace/apriltags/AprilTags/FloatImage.h"
    "/Users/pring/Workspace/apriltags/AprilTags/GLine2D.h"
    "/Users/pring/Workspace/apriltags/AprilTags/GLineSegment2D.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Gaussian.h"
    "/Users/pring/Workspace/apriltags/AprilTags/GrayModel.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Gridder.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Homography33.h"
    "/Users/pring/Workspace/apriltags/AprilTags/MathUtil.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Quad.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Segment.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag16h5.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag16h5_other.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag25h7.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag25h9.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag36h11.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag36h11_other.h"
    "/Users/pring/Workspace/apriltags/AprilTags/Tag36h9.h"
    "/Users/pring/Workspace/apriltags/AprilTags/TagDetection.h"
    "/Users/pring/Workspace/apriltags/AprilTags/TagDetector.h"
    "/Users/pring/Workspace/apriltags/AprilTags/TagFamily.h"
    "/Users/pring/Workspace/apriltags/AprilTags/UnionFindSimple.h"
    "/Users/pring/Workspace/apriltags/AprilTags/XYWeight.h"
    "/Users/pring/Workspace/apriltags/AprilTags/pch.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/pring/Workspace/apriltags/pod-build/lib/pkgconfig/apriltags.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/pring/Workspace/apriltags/pod-build/example/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/pring/Workspace/apriltags/pod-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
