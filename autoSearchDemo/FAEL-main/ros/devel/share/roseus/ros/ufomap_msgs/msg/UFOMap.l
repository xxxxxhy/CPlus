;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::UFOMap)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'UFOMap (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::UFOMAP")
  (make-package "UFOMAP_MSGS::UFOMAP"))

(in-package "ROS")
;;//! \htmlinclude UFOMap.msg.html


(defclass ufomap_msgs::UFOMap
  :super ros::object
  :slots (_info _data ))

(defmethod ufomap_msgs::UFOMap
  (:init
   (&key
    ((:info __info) (instance ufomap_msgs::UFOMapMetaData :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _info __info)
   (setq _data __data)
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/UFOMapMetaData _info
    (send _info :serialization-length)
    ;; int8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/UFOMapMetaData _info
       (send _info :serialize s)
     ;; int8[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/UFOMapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; int8[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;;
   self)
  )

(setf (get ufomap_msgs::UFOMap :md5sum-) "6853af3d2dbb0ca48ce44c3720af1cca")
(setf (get ufomap_msgs::UFOMap :datatype-) "ufomap_msgs/UFOMap")
(setf (get ufomap_msgs::UFOMap :definition-)
      "# A 3D map in binary format, as Octree
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



(provide :ufomap_msgs/UFOMap "6853af3d2dbb0ca48ce44c3720af1cca")


