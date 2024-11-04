;; Auto-generated. Do not edit!


(when (boundp 'ufomap_srvs::SaveMap)
  (if (not (find-package "UFOMAP_SRVS"))
    (make-package "UFOMAP_SRVS"))
  (shadow 'SaveMap (find-package "UFOMAP_SRVS")))
(unless (find-package "UFOMAP_SRVS::SAVEMAP")
  (make-package "UFOMAP_SRVS::SAVEMAP"))
(unless (find-package "UFOMAP_SRVS::SAVEMAPREQUEST")
  (make-package "UFOMAP_SRVS::SAVEMAPREQUEST"))
(unless (find-package "UFOMAP_SRVS::SAVEMAPRESPONSE")
  (make-package "UFOMAP_SRVS::SAVEMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "UFOMAP_MSGS"))
  (ros::roseus-add-msgs "ufomap_msgs"))




(defclass ufomap_srvs::SaveMapRequest
  :super ros::object
  :slots (_filename _depth _compress _compression_level _bounding_volume ))

(defmethod ufomap_srvs::SaveMapRequest
  (:init
   (&key
    ((:filename __filename) "")
    ((:depth __depth) 0)
    ((:compress __compress) nil)
    ((:compression_level __compression_level) 0)
    ((:bounding_volume __bounding_volume) (instance ufomap_msgs::BoundingVolume :init))
    )
   (send-super :init)
   (setq _filename (string __filename))
   (setq _depth (round __depth))
   (setq _compress __compress)
   (setq _compression_level (round __compression_level))
   (setq _bounding_volume __bounding_volume)
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:compress
   (&optional (__compress :null))
   (if (not (eq __compress :null)) (setq _compress __compress)) _compress)
  (:compression_level
   (&optional __compression_level)
   (if __compression_level (setq _compression_level __compression_level)) _compression_level)
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
    ;; string _filename
    4 (length _filename)
    ;; uint8 _depth
    1
    ;; bool _compress
    1
    ;; int32 _compression_level
    4
    ;; ufomap_msgs/BoundingVolume _bounding_volume
    (send _bounding_volume :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; uint8 _depth
       (write-byte _depth s)
     ;; bool _compress
       (if _compress (write-byte -1 s) (write-byte 0 s))
     ;; int32 _compression_level
       (write-long _compression_level s)
     ;; ufomap_msgs/BoundingVolume _bounding_volume
       (send _bounding_volume :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _depth
     (setq _depth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _compress
     (setq _compress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _compression_level
     (setq _compression_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ufomap_msgs/BoundingVolume _bounding_volume
     (send _bounding_volume :deserialize buf ptr-) (incf ptr- (send _bounding_volume :serialization-length))
   ;;
   self)
  )

(defclass ufomap_srvs::SaveMapResponse
  :super ros::object
  :slots (_success ))

(defmethod ufomap_srvs::SaveMapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ufomap_srvs::SaveMap
  :super ros::object
  :slots ())

(setf (get ufomap_srvs::SaveMap :md5sum-) "d0fd03b00c5e25ad1ec5e95dc82eecdd")
(setf (get ufomap_srvs::SaveMap :datatype-) "ufomap_srvs/SaveMap")
(setf (get ufomap_srvs::SaveMap :request) ufomap_srvs::SaveMapRequest)
(setf (get ufomap_srvs::SaveMap :response) ufomap_srvs::SaveMapResponse)

(defmethod ufomap_srvs::SaveMapRequest
  (:response () (instance ufomap_srvs::SaveMapResponse :init)))

(setf (get ufomap_srvs::SaveMapRequest :md5sum-) "d0fd03b00c5e25ad1ec5e95dc82eecdd")
(setf (get ufomap_srvs::SaveMapRequest :datatype-) "ufomap_srvs/SaveMapRequest")
(setf (get ufomap_srvs::SaveMapRequest :definition-)
      "# Save the map to file

# Name of the file
string filename
# The depth of the map to save
uint8 depth
# If the file should be compressed
bool compress
# Compression level (higher number equals more compressed)
int32 compression_level
# Bounding volume of which part of the map should be saved
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

")

(setf (get ufomap_srvs::SaveMapResponse :md5sum-) "d0fd03b00c5e25ad1ec5e95dc82eecdd")
(setf (get ufomap_srvs::SaveMapResponse :datatype-) "ufomap_srvs/SaveMapResponse")
(setf (get ufomap_srvs::SaveMapResponse :definition-)
      "# Save the map to file

# Name of the file
string filename
# The depth of the map to save
uint8 depth
# If the file should be compressed
bool compress
# Compression level (higher number equals more compressed)
int32 compression_level
# Bounding volume of which part of the map should be saved
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

")



(provide :ufomap_srvs/SaveMap "d0fd03b00c5e25ad1ec5e95dc82eecdd")


