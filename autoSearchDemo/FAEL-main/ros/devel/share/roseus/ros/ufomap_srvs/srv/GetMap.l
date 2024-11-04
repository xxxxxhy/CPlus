;; Auto-generated. Do not edit!


(when (boundp 'ufomap_srvs::GetMap)
  (if (not (find-package "UFOMAP_SRVS"))
    (make-package "UFOMAP_SRVS"))
  (shadow 'GetMap (find-package "UFOMAP_SRVS")))
(unless (find-package "UFOMAP_SRVS::GETMAP")
  (make-package "UFOMAP_SRVS::GETMAP"))
(unless (find-package "UFOMAP_SRVS::GETMAPREQUEST")
  (make-package "UFOMAP_SRVS::GETMAPREQUEST"))
(unless (find-package "UFOMAP_SRVS::GETMAPRESPONSE")
  (make-package "UFOMAP_SRVS::GETMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "UFOMAP_MSGS"))
  (ros::roseus-add-msgs "ufomap_msgs"))


(if (not (find-package "UFOMAP_MSGS"))
  (ros::roseus-add-msgs "ufomap_msgs"))


(defclass ufomap_srvs::GetMapRequest
  :super ros::object
  :slots (_depth _compress _bounding_volume ))

(defmethod ufomap_srvs::GetMapRequest
  (:init
   (&key
    ((:depth __depth) 0)
    ((:compress __compress) nil)
    ((:bounding_volume __bounding_volume) (instance ufomap_msgs::BoundingVolume :init))
    )
   (send-super :init)
   (setq _depth (round __depth))
   (setq _compress __compress)
   (setq _bounding_volume __bounding_volume)
   self)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:compress
   (&optional (__compress :null))
   (if (not (eq __compress :null)) (setq _compress __compress)) _compress)
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
    ;; uint8 _depth
    1
    ;; bool _compress
    1
    ;; ufomap_msgs/BoundingVolume _bounding_volume
    (send _bounding_volume :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _depth
       (write-byte _depth s)
     ;; bool _compress
       (if _compress (write-byte -1 s) (write-byte 0 s))
     ;; ufomap_msgs/BoundingVolume _bounding_volume
       (send _bounding_volume :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _depth
     (setq _depth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _compress
     (setq _compress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ufomap_msgs/BoundingVolume _bounding_volume
     (send _bounding_volume :deserialize buf ptr-) (incf ptr- (send _bounding_volume :serialization-length))
   ;;
   self)
  )

(defclass ufomap_srvs::GetMapResponse
  :super ros::object
  :slots (_success _map ))

(defmethod ufomap_srvs::GetMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:map __map) (instance ufomap_msgs::UFOMap :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _map __map)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
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
    ;; bool _success
    1
    ;; ufomap_msgs/UFOMap _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; ufomap_msgs/UFOMap _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ufomap_msgs/UFOMap _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass ufomap_srvs::GetMap
  :super ros::object
  :slots ())

(setf (get ufomap_srvs::GetMap :md5sum-) "47cd0cd4e998ca314e6ccaf9f3b259df")
(setf (get ufomap_srvs::GetMap :datatype-) "ufomap_srvs/GetMap")
(setf (get ufomap_srvs::GetMap :request) ufomap_srvs::GetMapRequest)
(setf (get ufomap_srvs::GetMap :response) ufomap_srvs::GetMapResponse)

(defmethod ufomap_srvs::GetMapRequest
  (:response () (instance ufomap_srvs::GetMapResponse :init)))

(setf (get ufomap_srvs::GetMapRequest :md5sum-) "47cd0cd4e998ca314e6ccaf9f3b259df")
(setf (get ufomap_srvs::GetMapRequest :datatype-) "ufomap_srvs/GetMapRequest")
(setf (get ufomap_srvs::GetMapRequest :definition-)
      "# Get the complete map at a specified depth

# The depth of the map to return
uint8 depth
# If the message should be compressed
bool compress
# Bounding volume of which part of the map should be returned
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

---
# If it was successful
bool success
# The map to be returned
ufomap_msgs/UFOMap map


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

")

(setf (get ufomap_srvs::GetMapResponse :md5sum-) "47cd0cd4e998ca314e6ccaf9f3b259df")
(setf (get ufomap_srvs::GetMapResponse :datatype-) "ufomap_srvs/GetMapResponse")
(setf (get ufomap_srvs::GetMapResponse :definition-)
      "# Get the complete map at a specified depth

# The depth of the map to return
uint8 depth
# If the message should be compressed
bool compress
# Bounding volume of which part of the map should be returned
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

---
# If it was successful
bool success
# The map to be returned
ufomap_msgs/UFOMap map


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

")



(provide :ufomap_srvs/GetMap "47cd0cd4e998ca314e6ccaf9f3b259df")


