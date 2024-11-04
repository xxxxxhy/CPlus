;; Auto-generated. Do not edit!


(when (boundp 'planner::PreprocessMsgs)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'PreprocessMsgs (find-package "PLANNER")))
(unless (find-package "PLANNER::PREPROCESSMSGS")
  (make-package "PLANNER::PREPROCESSMSGS"))

(in-package "ROS")
;;//! \htmlinclude PreprocessMsgs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UFOMAP_MANAGER"))
  (ros::roseus-add-msgs "ufomap_manager"))


(defclass planner::PreprocessMsgs
  :super ros::object
  :slots (_header _ufomap_with_frontiers _viewpoint_frontiers_set _road_map_msg ))

(defmethod planner::PreprocessMsgs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ufomap_with_frontiers __ufomap_with_frontiers) (instance ufomap_manager::UfomapWithFrontiers :init))
    ((:viewpoint_frontiers_set __viewpoint_frontiers_set) ())
    ((:road_map_msg __road_map_msg) (instance planner::RoadMapMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ufomap_with_frontiers __ufomap_with_frontiers)
   (setq _viewpoint_frontiers_set __viewpoint_frontiers_set)
   (setq _road_map_msg __road_map_msg)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ufomap_with_frontiers
   (&rest __ufomap_with_frontiers)
   (if (keywordp (car __ufomap_with_frontiers))
       (send* _ufomap_with_frontiers __ufomap_with_frontiers)
     (progn
       (if __ufomap_with_frontiers (setq _ufomap_with_frontiers (car __ufomap_with_frontiers)))
       _ufomap_with_frontiers)))
  (:viewpoint_frontiers_set
   (&rest __viewpoint_frontiers_set)
   (if (keywordp (car __viewpoint_frontiers_set))
       (send* _viewpoint_frontiers_set __viewpoint_frontiers_set)
     (progn
       (if __viewpoint_frontiers_set (setq _viewpoint_frontiers_set (car __viewpoint_frontiers_set)))
       _viewpoint_frontiers_set)))
  (:road_map_msg
   (&rest __road_map_msg)
   (if (keywordp (car __road_map_msg))
       (send* _road_map_msg __road_map_msg)
     (progn
       (if __road_map_msg (setq _road_map_msg (car __road_map_msg)))
       _road_map_msg)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ufomap_manager/UfomapWithFrontiers _ufomap_with_frontiers
    (send _ufomap_with_frontiers :serialization-length)
    ;; planner/ViewpointsWithFrontiers[] _viewpoint_frontiers_set
    (apply #'+ (send-all _viewpoint_frontiers_set :serialization-length)) 4
    ;; planner/RoadMapMsg _road_map_msg
    (send _road_map_msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ufomap_manager/UfomapWithFrontiers _ufomap_with_frontiers
       (send _ufomap_with_frontiers :serialize s)
     ;; planner/ViewpointsWithFrontiers[] _viewpoint_frontiers_set
     (write-long (length _viewpoint_frontiers_set) s)
     (dolist (elem _viewpoint_frontiers_set)
       (send elem :serialize s)
       )
     ;; planner/RoadMapMsg _road_map_msg
       (send _road_map_msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ufomap_manager/UfomapWithFrontiers _ufomap_with_frontiers
     (send _ufomap_with_frontiers :deserialize buf ptr-) (incf ptr- (send _ufomap_with_frontiers :serialization-length))
   ;; planner/ViewpointsWithFrontiers[] _viewpoint_frontiers_set
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _viewpoint_frontiers_set (let (r) (dotimes (i n) (push (instance planner::ViewpointsWithFrontiers :init) r)) r))
     (dolist (elem- _viewpoint_frontiers_set)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planner/RoadMapMsg _road_map_msg
     (send _road_map_msg :deserialize buf ptr-) (incf ptr- (send _road_map_msg :serialization-length))
   ;;
   self)
  )

(setf (get planner::PreprocessMsgs :md5sum-) "73bcf5cb2848fb40ea7e49ae1282eac0")
(setf (get planner::PreprocessMsgs :datatype-) "planner/PreprocessMsgs")
(setf (get planner::PreprocessMsgs :definition-)
      "
Header header

ufomap_manager/UfomapWithFrontiers ufomap_with_frontiers

ViewpointsWithFrontiers[] viewpoint_frontiers_set

RoadMapMsg road_map_msg

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ufomap_manager/UfomapWithFrontiers
Header header

ufomap_msgs/UFOMap  ufomap

#geometry_msgs/Point[] local_frontiers_center
#geometry_msgs/Point[] global_frontiers_center
#
#int32 frontiers_depth

ufomap_manager/CellCode[] local_frontiers
ufomap_manager/CellCode[] global_frontiers
ufomap_manager/CellCode[] changed_cell_codes
ufomap_manager/CellCode[] known_cell_codes

# 构建ufomap时机器人的参数配置
string frame_id
string robot_base_frame_id
float64 robot_height
float64 robot_bottom
float64 robot_radius
float64 max_range

uint32 known_plane_cell_num
================================================================================
MSG: ufomap_msgs/UFOMap
# A 3D map in binary format, as Octree
ufomap_msgs/UFOMapMetaData info

# Binary serialization of Octree, use conversions.h to read and write octrees
int8[] data
================================================================================
MSG: ufomap_msgs/UFOMapMetaData
# File version used
string version

# Class id of the contained Octree
string id

# Resolution (in m) of the octree leaf nodes
float64 resolution

# Number of depth levels
uint8 depth_levels

# If data is compressed
bool compressed

# Size of data uncompressed
int32 uncompressed_data_size

# Bounding volume
ufomap_msgs/BoundingVolume bounding_volume
================================================================================
MSG: ufomap_msgs/BoundingVolume
ufomap_msgs/AABB[] aabbs

# ufomap_msgs/Capsule[] capsules

# ufomap_msgs/Cone[] cones

# ufomap_msgs/Cylinder[] cylinders

# ufomap_msgs/Ellipsoid[] ellipsoids

ufomap_msgs/Frustum[] frustums

ufomap_msgs/LineSegment[] line_segments

ufomap_msgs/OBB[] obbs

ufomap_msgs/Plane[] planes

ufomap_msgs/Point[] points

ufomap_msgs/Ray[] rays

ufomap_msgs/Sphere[] spheres

# ufomap_msgs/Triangle[] triangles
================================================================================
MSG: ufomap_msgs/AABB
ufomap_msgs/Point center

ufomap_msgs/Point half_size
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
================================================================================
MSG: ufomap_msgs/Frustum
ufomap_msgs/Plane[6] planes
================================================================================
MSG: ufomap_msgs/Plane
ufomap_msgs/Point normal

float64 distance
================================================================================
MSG: ufomap_msgs/LineSegment
ufomap_msgs/Point start

ufomap_msgs/Point end
================================================================================
MSG: ufomap_msgs/OBB
ufomap_msgs/Point center

ufomap_msgs/Point half_size

ufomap_msgs/Point rotation
================================================================================
MSG: ufomap_msgs/Ray
ufomap_msgs/Point origin

ufomap_msgs/Point direction
================================================================================
MSG: ufomap_msgs/Sphere
ufomap_msgs/Point center

float64 radius
================================================================================
MSG: ufomap_manager/CellCode
uint32 depth
uint64 Code

================================================================================
MSG: planner/ViewpointsWithFrontiers

geometry_msgs/Point view_point
ufomap_manager/CellCode[] frontiers
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: planner/RoadMapMsg

IdPointPair[] id_point_pair_list
EdgePair[] edge_pair_list
================================================================================
MSG: planner/IdPointPair
int32 id
geometry_msgs/Point point
================================================================================
MSG: planner/EdgePair

int32 edge_id
IdPointPair begin_point
IdPointPair end_point
")



(provide :planner/PreprocessMsgs "73bcf5cb2848fb40ea7e49ae1282eac0")


