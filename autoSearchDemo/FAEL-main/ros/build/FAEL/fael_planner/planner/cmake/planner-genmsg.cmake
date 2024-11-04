# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "planner: 5 messages, 0 services")

set(MSG_I_FLAGS "-Iplanner:/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iufomap_manager:/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iufomap_msgs:/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" "planner/IdPointPair:geometry_msgs/Point"
)

get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" "planner/IdPointPair:geometry_msgs/Point:planner/EdgePair"
)

get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" "geometry_msgs/Point:ufomap_manager/CellCode"
)

get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" NAME_WE)
add_custom_target(_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planner" "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" "planner/RoadMapMsg:ufomap_msgs/Point:ufomap_msgs/UFOMapMetaData:geometry_msgs/Point:ufomap_msgs/OBB:ufomap_msgs/LineSegment:ufomap_msgs/UFOMap:ufomap_msgs/Sphere:planner/IdPointPair:planner/ViewpointsWithFrontiers:ufomap_msgs/Plane:ufomap_manager/UfomapWithFrontiers:planner/EdgePair:ufomap_msgs/AABB:ufomap_msgs/BoundingVolume:ufomap_manager/CellCode:ufomap_msgs/Ray:std_msgs/Header:ufomap_msgs/Frustum"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)
_generate_msg_cpp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)
_generate_msg_cpp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)
_generate_msg_cpp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)
_generate_msg_cpp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/OBB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/LineSegment.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMap.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Sphere.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Plane.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/UfomapWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/AABB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/BoundingVolume.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Ray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Frustum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
)

### Generating Services

### Generating Module File
_generate_module_cpp(planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(planner_generate_messages planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" NAME_WE)
add_dependencies(planner_generate_messages_cpp _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_gencpp)
add_dependencies(planner_gencpp planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)
_generate_msg_eus(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)
_generate_msg_eus(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)
_generate_msg_eus(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)
_generate_msg_eus(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/OBB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/LineSegment.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMap.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Sphere.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Plane.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/UfomapWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/AABB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/BoundingVolume.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Ray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Frustum.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
)

### Generating Services

### Generating Module File
_generate_module_eus(planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(planner_generate_messages planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" NAME_WE)
add_dependencies(planner_generate_messages_eus _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_geneus)
add_dependencies(planner_geneus planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)
_generate_msg_lisp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)
_generate_msg_lisp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)
_generate_msg_lisp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)
_generate_msg_lisp(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/OBB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/LineSegment.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMap.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Sphere.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Plane.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/UfomapWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/AABB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/BoundingVolume.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Ray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Frustum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
)

### Generating Services

### Generating Module File
_generate_module_lisp(planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(planner_generate_messages planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" NAME_WE)
add_dependencies(planner_generate_messages_lisp _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_genlisp)
add_dependencies(planner_genlisp planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)
_generate_msg_nodejs(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)
_generate_msg_nodejs(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)
_generate_msg_nodejs(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)
_generate_msg_nodejs(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/OBB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/LineSegment.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMap.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Sphere.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Plane.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/UfomapWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/AABB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/BoundingVolume.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Ray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Frustum.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
)

### Generating Services

### Generating Module File
_generate_module_nodejs(planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(planner_generate_messages planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" NAME_WE)
add_dependencies(planner_generate_messages_nodejs _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_gennodejs)
add_dependencies(planner_gennodejs planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)
_generate_msg_py(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)
_generate_msg_py(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)
_generate_msg_py(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)
_generate_msg_py(planner
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg"
  "${MSG_I_FLAGS}"
  "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/OBB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/LineSegment.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/UFOMap.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Sphere.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Plane.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/UfomapWithFrontiers.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/AABB.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/BoundingVolume.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_manager/msg/CellCode.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Ray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/3rdparty/ufomap/ufomap_ros/ufomap_msgs/msg/Frustum.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
)

### Generating Services

### Generating Module File
_generate_module_py(planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(planner_generate_messages planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/IdPointPair.msg" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/EdgePair.msg" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/RoadMapMsg.msg" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/ViewpointsWithFrontiers.msg" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sany-xhy/Documents/CPlus/autoSearchDemo/FAEL-main/ros/src/FAEL/fael_planner/planner/msg/PreprocessMsgs.msg" NAME_WE)
add_dependencies(planner_generate_messages_py _planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planner_genpy)
add_dependencies(planner_genpy planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET ufomap_manager_generate_messages_cpp)
  add_dependencies(planner_generate_messages_cpp ufomap_manager_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET ufomap_manager_generate_messages_eus)
  add_dependencies(planner_generate_messages_eus ufomap_manager_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET ufomap_manager_generate_messages_lisp)
  add_dependencies(planner_generate_messages_lisp ufomap_manager_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET ufomap_manager_generate_messages_nodejs)
  add_dependencies(planner_generate_messages_nodejs ufomap_manager_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(planner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET ufomap_manager_generate_messages_py)
  add_dependencies(planner_generate_messages_py ufomap_manager_generate_messages_py)
endif()
