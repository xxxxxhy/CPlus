;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::UFOMapMetaData)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'UFOMapMetaData (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::UFOMAPMETADATA")
  (make-package "UFOMAP_MSGS::UFOMAPMETADATA"))

(in-package "ROS")
;;//! \htmlinclude UFOMapMetaData.msg.html


(defclass ufomap_msgs::UFOMapMetaData
  :super ros::object
  :slots (_version _id _resolution _depth_levels _compressed _uncompressed_data_size _bounding_volume ))

(defmethod ufomap_msgs::UFOMapMetaData
  (:init
   (&key
    ((:version __version) "")
    ((:id __id) "")
    ((:resolution __resolution) 0.0)
    ((:depth_levels __depth_levels) 0)
    ((:compressed __compressed) nil)
    ((:uncompressed_data_size __uncompressed_data_size) 0)
    ((:bounding_volume __bounding_volume) (instance ufomap_msgs::BoundingVolume :init))
    )
   (send-super :init)
   (setq _version (string __version))
   (setq _id (string __id))
   (setq _resolution (float __resolution))
   (setq _depth_levels (round __depth_levels))
   (setq _compressed __compressed)
   (setq _uncompressed_data_size (round __uncompressed_data_size))
   (setq _bounding_volume __bounding_volume)
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:depth_levels
   (&optional __depth_levels)
   (if __depth_levels (setq _depth_levels __depth_levels)) _depth_levels)
  (:compressed
   (&optional (__compressed :null))
   (if (not (eq __compressed :null)) (setq _compressed __compressed)) _compressed)
  (:uncompressed_data_size
   (&optional __uncompressed_data_size)
   (if __uncompressed_data_size (setq _uncompressed_data_size __uncompressed_data_size)) _uncompressed_data_size)
  (:bounding_volume
   (&rest __bounding_volume)
   (if (keywordp (car __bounding_volume))
       (send* _bounding_volume __bounding_volume)
     (progn
       (if __bounding_volume (setq _bounding_volume (car __bounding_volume)))
       _bounding_volume)))
  (:serialization-length
   ()
   (+
    ;; string _version
    4 (length _version)
    ;; string _id
    4 (length _id)
    ;; float64 _resolution
    8
    ;; uint8 _depth_levels
    1
    ;; bool _compressed
    1
    ;; int32 _uncompressed_data_size
    4
    ;; ufomap_msgs/BoundingVolume _bounding_volume
    (send _bounding_volume :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _depth_levels
       (write-byte _depth_levels s)
     ;; bool _compressed
       (if _compressed (write-byte -1 s) (write-byte 0 s))
     ;; int32 _uncompressed_data_size
       (write-long _uncompressed_data_size s)
     ;; ufomap_msgs/BoundingVolume _bounding_volume
       (send _bounding_volume :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _depth_levels
     (setq _depth_levels (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _compressed
     (setq _compressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _uncompressed_data_size
     (setq _uncompressed_data_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ufomap_msgs/BoundingVolume _bounding_volume
     (send _bounding_volume :deserialize buf ptr-) (incf ptr- (send _bounding_volume :serialization-length))
   ;;
   self)
  )

(setf (get ufomap_msgs::UFOMapMetaData :md5sum-) "3469fb65109a0fe2f8055afe98d145fa")
(setf (get ufomap_msgs::UFOMapMetaData :datatype-) "ufomap_msgs/UFOMapMetaData")
(setf (get ufomap_msgs::UFOMapMetaData :definition-)
      "# File version used
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



(provide :ufomap_msgs/UFOMapMetaData "3469fb65109a0fe2f8055afe98d145fa")


