# Install script for directory: /home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/robot_move/cmu_planner/local_planner

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/build/FAEL/fael_planner/robot_move/cmu_planner/local_planner/catkin_generated/installspace/local_planner.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/local_planner/cmake" TYPE FILE FILES
    "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/build/FAEL/fael_planner/robot_move/cmu_planner/local_planner/catkin_generated/installspace/local_plannerConfig.cmake"
    "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/build/FAEL/fael_planner/robot_move/cmu_planner/local_planner/catkin_generated/installspace/local_plannerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/local_planner" TYPE FILE FILES "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/robot_move/cmu_planner/local_planner/package.xml")
endif()

