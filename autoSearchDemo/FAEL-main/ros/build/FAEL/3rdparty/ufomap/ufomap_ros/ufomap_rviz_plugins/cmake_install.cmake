# Install script for directory: /home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/build/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/catkin_generated/installspace/ufomap_rviz_plugins.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ufomap_rviz_plugins/cmake" TYPE FILE FILES
    "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/build/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/catkin_generated/installspace/ufomap_rviz_pluginsConfig.cmake"
    "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/build/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/catkin_generated/installspace/ufomap_rviz_pluginsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ufomap_rviz_plugins" TYPE FILE FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ufomap_rviz_plugins" TYPE DIRECTORY FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/include/ufomap_rviz_plugins/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/devel/lib/libufomap_rviz_plugins.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so"
         OLD_RPATH "/opt/ros/noetic/lib:/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libufomap_rviz_plugins.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ufomap_rviz_plugins" TYPE FILE FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_rviz_plugins/plugin_description.xml")
endif()

