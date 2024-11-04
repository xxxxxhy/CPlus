;; Auto-generated. Do not edit!


(when (boundp 'ufomap_manager::UfomapWithFrontiers)
  (if (not (find-package "UFOMAP_MANAGER"))
    (make-package "UFOMAP_MANAGER"))
  (shadow 'UfomapWithFrontiers (find-package "UFOMAP_MANAGER")))
(unless (find-package "UFOMAP_MANAGER::UFOMAPWITHFRONTIERS")
  (make-package "UFOMAP_MANAGER::UFOMAPWITHFRONTIERS"))

(in-package "ROS")
;;//! \htmlinclude UfomapWithFrontiers.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UFOMAP_MSGS"))
  (ros::roseus-add-msgs "ufomap_msgs"))


(defclass ufomap_manager::UfomapWithFrontiers
  :super ros::object
  :slots (_header _ufomap _local_frontiers _global_frontiers _changed_cell_codes _known_cell_codes _frame_id _robot_base_frame_id _robot_height _robot_bottom _robot_radius _max_range _known_plane_cell_num ))

(defmethod ufomap_manager::UfomapWithFrontiers
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ufomap __ufomap) (instance ufomap_msgs::UFOMap :init))
    ((:local_frontiers __local_frontiers) ())
    ((:global_frontiers __global_frontiers) ())
    ((:changed_cell_codes __changed_cell_codes) ())
    ((:known_cell_codes __known_cell_codes) ())
    ((:frame_id __frame_id) "")
    ((:robot_base_frame_id __robot_base_frame_id) "")
    ((:robot_height __robot_height) 0.0)
    ((:robot_bottom __robot_bottom) 0.0)
    ((:robot_radius __robot_radius) 0.0)
    ((:max_range __max_range) 0.0)
    ((:known_plane_cell_num __known_plane_cell_num) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ufomap __ufomap)
   (setq _local_frontiers __local_frontiers)
   (setq _global_frontiers __global_frontiers)
   (setq _changed_cell_codes __changed_cell_codes)
   (setq _known_cell_codes __known_cell_codes)
   (setq _frame_id (string __frame_id))
   (setq _robot_base_frame_id (string __robot_base_frame_id))
   (setq _robot_height (float __robot_height))
   (setq _robot_bottom (float __robot_bottom))
   (setq _robot_radius (float __robot_radius))
   (setq _max_range (float __max_range))
   (setq _known_plane_cell_num (round __known_plane_cell_num))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ufomap
   (&rest __ufomap)
   (if (keywordp (car __ufomap))
       (send* _ufomap __ufomap)
     (progn
       (if __ufomap (setq _ufomap (car __ufomap)))
       _ufomap)))
  (:local_frontiers
   (&rest __local_frontiers)
   (if (keywordp (car __local_frontiers))
       (send* _local_frontiers __local_frontiers)
     (progn
       (if __local_frontiers (setq _local_frontiers (car __local_frontiers)))
       _local_frontiers)))
  (:global_frontiers
   (&rest __global_frontiers)
   (if (keywordp (car __global_frontiers))
       (send* _global_frontiers __global_frontiers)
     (progn
       (if __global_frontiers (setq _global_frontiers (car __global_frontiers)))
       _global_frontiers)))
  (:changed_cell_codes
   (&rest __changed_cell_codes)
   (if (keywordp (car __changed_cell_codes))
       (send* _changed_cell_codes __changed_cell_codes)
     (progn
       (if __changed_cell_codes (setq _changed_cell_codes (car __changed_cell_codes)))
       _changed_cell_codes)))
  (:known_cell_codes
   (&rest __known_cell_codes)
   (if (keywordp (car __known_cell_codes))
       (send* _known_cell_codes __known_cell_codes)
     (progn
       (if __known_cell_codes (setq _known_cell_codes (car __known_cell_codes)))
       _known_cell_codes)))
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:robot_base_frame_id
   (&optional __robot_base_frame_id)
   (if __robot_base_frame_id (setq _robot_base_frame_id __robot_base_frame_id)) _robot_base_frame_id)
  (:robot_height
   (&optional __robot_height)
   (if __robot_height (setq _robot_height __robot_height)) _robot_height)
  (:robot_bottom
   (&optional __robot_bottom)
   (if __robot_bottom (setq _robot_bottom __robot_bottom)) _robot_bottom)
  (:robot_radius
   (&optional __robot_radius)
   (if __robot_radius (setq _robot_radius __robot_radius)) _robot_radius)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:known_plane_cell_num
   (&optional __known_plane_cell_num)
   (if __known_plane_cell_num (setq _known_plane_cell_num __known_plane_cell_num)) _known_plane_cell_num)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ufomap_msgs/UFOMap _ufomap
    (send _ufomap :serialization-length)
    ;; ufomap_manager/CellCode[] _local_frontiers
    (apply #'+ (send-all _local_frontiers :serialization-length)) 4
    ;; ufomap_manager/CellCode[] _global_frontiers
    (apply #'+ (send-all _global_frontiers :serialization-length)) 4
    ;; ufomap_manager/CellCode[] _changed_cell_codes
    (apply #'+ (send-all _changed_cell_codes :serialization-length)) 4
    ;; ufomap_manager/CellCode[] _known_cell_codes
    (apply #'+ (send-all _known_cell_codes :serialization-length)) 4
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _robot_base_frame_id
    4 (length _robot_base_frame_id)
    ;; float64 _robot_height
    8
    ;; float64 _robot_bottom
    8
    ;; float64 _robot_radius
    8
    ;; float64 _max_range
    8
    ;; uint32 _known_plane_cell_num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ufomap_msgs/UFOMap _ufomap
       (send _ufomap :serialize s)
     ;; ufomap_manager/CellCode[] _local_frontiers
     (write-long (length _local_frontiers) s)
     (dolist (elem _local_frontiers)
       (send elem :serialize s)
       )
     ;; ufomap_manager/CellCode[] _global_frontiers
     (write-long (length _global_frontiers) s)
     (dolist (elem _global_frontiers)
       (send elem :serialize s)
       )
     ;; ufomap_manager/CellCode[] _changed_cell_codes
     (write-long (length _changed_cell_codes) s)
     (dolist (elem _changed_cell_codes)
       (send elem :serialize s)
       )
     ;; ufomap_manager/CellCode[] _known_cell_codes
     (write-long (length _known_cell_codes) s)
     (dolist (elem _known_cell_codes)
       (send elem :serialize s)
       )
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _robot_base_frame_id
       (write-long (length _robot_base_frame_id) s) (princ _robot_base_frame_id s)
     ;; float64 _robot_height
       (sys::poke _robot_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robot_bottom
       (sys::poke _robot_bottom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _known_plane_cell_num
       (write-long _known_plane_cell_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ufomap_msgs/UFOMap _ufomap
     (send _ufomap :deserialize buf ptr-) (incf ptr- (send _ufomap :serialization-length))
   ;; ufomap_manager/CellCode[] _local_frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_frontiers (let (r) (dotimes (i n) (push (instance ufomap_manager::CellCode :init) r)) r))
     (dolist (elem- _local_frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_manager/CellCode[] _global_frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_frontiers (let (r) (dotimes (i n) (push (instance ufomap_manager::CellCode :init) r)) r))
     (dolist (elem- _global_frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_manager/CellCode[] _changed_cell_codes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _changed_cell_codes (let (r) (dotimes (i n) (push (instance ufomap_manager::CellCode :init) r)) r))
     (dolist (elem- _changed_cell_codes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_manager/CellCode[] _known_cell_codes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _known_cell_codes (let (r) (dotimes (i n) (push (instance ufomap_manager::CellCode :init) r)) r))
     (dolist (elem- _known_cell_codes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_base_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_base_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _robot_height
     (setq _robot_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robot_bottom
     (setq _robot_bottom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_range
     (setq _max_range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _known_plane_cell_num
     (setq _known_plane_cell_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ufomap_manager::UfomapWithFrontiers :md5sum-) "22e13be68b8e1ef450cd96e270be998b")
(setf (get ufomap_manager::UfomapWithFrontiers :datatype-) "ufomap_manager/UfomapWithFrontiers")
(setf (get ufomap_manager::UfomapWithFrontiers :definition-)
      "Header header

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

")



(provide :ufomap_manager/UfomapWithFrontiers "22e13be68b8e1ef450cd96e270be998b")


