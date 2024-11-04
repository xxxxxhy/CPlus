;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::UFOMapStamped)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'UFOMapStamped (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::UFOMAPSTAMPED")
  (make-package "UFOMAP_MSGS::UFOMAPSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude UFOMapStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ufomap_msgs::UFOMapStamped
  :super ros::object
  :slots (_header _map ))

(defmethod ufomap_msgs::UFOMapStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map __map) (instance ufomap_msgs::UFOMap :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _map __map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ufomap_msgs/UFOMap _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ufomap_msgs/UFOMap _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ufomap_msgs/UFOMap _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(setf (get ufomap_msgs::UFOMapStamped :md5sum-) "4e6ca7ef43516fb3a0c22c889b3897eb")
(setf (get ufomap_msgs::UFOMapStamped :datatype-) "ufomap_msgs/UFOMapStamped")
(setf (get ufomap_msgs::UFOMapStamped :definition-)
      "Header header

ufomap_msgs/UFOMap map
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
")



(provide :ufomap_msgs/UFOMapStamped "4e6ca7ef43516fb3a0c22c889b3897eb")


