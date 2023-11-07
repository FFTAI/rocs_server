# Install script for directory: /home/fftai/Documents/feature/rocs_server/lib/rbdl

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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so.3.2.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so.3.2.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so.3.2.0"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/fftai/Documents/feature/rocs_server/lib/rbdl/build/librbdl.so.3.2.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so.3.2.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so.3.2.0")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so.3.2.0")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/fftai/Documents/feature/rocs_server/lib/rbdl/build/librbdl.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librbdl.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rbdl" TYPE FILE FILES
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/build/include/rbdl/rbdl_config.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Body.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Constraint.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Constraint_Contact.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Constraint_Loop.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Constraints.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Dynamics.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Joint.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Kinematics.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Logging.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Model.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/Quaternion.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/SpatialAlgebraOperators.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/compileassert.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/rbdl.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/rbdl_eigenmath.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/rbdl_errors.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/rbdl_math.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/rbdl_mathutils.h"
    "/home/fftai/Documents/feature/rocs_server/lib/rbdl/include/rbdl/rbdl_utils.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fftai/Documents/feature/rocs_server/lib/rbdl/build/rbdl.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/RBDL" TYPE FILE FILES "/home/fftai/Documents/feature/rocs_server/lib/rbdl/build/RBDLConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/fftai/Documents/feature/rocs_server/lib/rbdl/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
