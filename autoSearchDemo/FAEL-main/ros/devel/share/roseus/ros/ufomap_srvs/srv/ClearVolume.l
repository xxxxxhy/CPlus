;; Auto-generated. Do not edit!


(when (boundp 'ufomap_srvs::ClearVolume)
  (if (not (find-package "UFOMAP_SRVS"))
    (make-package "UFOMAP_SRVS"))
  (shadow 'ClearVolume (find-package "UFOMAP_SRVS")))
(unless (find-package "UFOMAP_SRVS::CLEARVOLUME")
  (make-package "UFOMAP_SRVS::CLEARVOLUME"))
(unless (find-package "UFOMAP_SRVS::CLEARVOLUMEREQUEST")
  (make-package "UFOMAP_SRVS::CLEARVOLUMEREQUEST"))
(unless (find-package "UFOMAP_SRVS::CLEARVOLUMERESPONSE")
  (make-package "UFOMAP_SRVS::CLEARVOLUMERESPONSE"))

(in-package "ROS")

(if (not (find-package "UFOMAP_MSGS"))
  (ros::roseus-add-msgs "ufomap_msgs"))




(defclass ufomap_srvs::ClearVolumeRequest
  :super ros::object
  :slots (_bounding_volume _depth ))

(defmethod ufomap_srvs::ClearVolumeRequest
  (:init
   (&key
    ((:bounding_volume __bounding_volume) (instance ufomap_msgs::BoundingVolume :init))
    ((:depth __depth) 0)
    )
   (send-super :init)
   (setq _bounding_volume __bounding_volume)
   (setq _depth (round __depth))
   self)
  (:bounding_volume
   (&rest __bounding_volume)
   (if (keywordp (car __bounding_volume))
       (send* _bounding_volume __bounding_volume)
     (progn
       (if __bounding_volume (setq _bounding_volume (car __bounding_volume)))
       _bounding_volume)))
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/BoundingVolume _bounding_volume
    (send _bounding_volume :serialization-length)
    ;; uint8 _depth
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/BoundingVolume _bounding_volume
       (send _bounding_volume :serialize s)
     ;; uint8 _depth
       (write-byte _depth s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/BoundingVolume _bounding_volume
     (send _bounding_volume :deserialize buf ptr-) (incf ptr- (send _bounding_volume :serialization-length))
   ;; uint8 _depth
     (setq _depth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ufomap_srvs::ClearVolumeResponse
  :super ros::object
  :slots (_success ))

(defmethod ufomap_srvs::ClearVolumeResponse
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

(defclass ufomap_srvs::ClearVolume
  :super ros::object
  :slots ())

(setf (get ufomap_srvs::ClearVolume :md5sum-) "d2fd0d5791e4eff60d2c257423ccf8ba")
(setf (get ufomap_srvs::ClearVolume :datatype-) "ufomap_srvs/ClearVolume")
(setf (get ufomap_srvs::ClearVolume :request) ufomap_srvs::ClearVolumeRequest)
(setf (get ufomap_srvs::ClearVolume :response) ufomap_srvs::ClearVolumeResponse)

(defmethod ufomap_srvs::ClearVolumeRequest
  (:response () (instance ufomap_srvs::ClearVolumeResponse :init)))

(setf (get ufomap_srvs::ClearVolumeRequest :md5sum-) "d2fd0d5791e4eff60d2c257423ccf8ba")
(setf (get ufomap_srvs::ClearVolumeRequest :datatype-) "ufomap_srvs/ClearVolumeRequest")
(setf (get ufomap_srvs::ClearVolumeRequest :definition-)
      "# Clear a part of the map, specified by a bounding volume. 
# Sets all voxels inside the bounding volume to ~clamping_thres_min/free space.

# The bounding volume
ufomap_msgs/BoundingVolume bounding_volume
# The depth at which it should be cleared
uint8 depth

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

(setf (get ufomap_srvs::ClearVolumeResponse :md5sum-) "d2fd0d5791e4eff60d2c257423ccf8ba")
(setf (get ufomap_srvs::ClearVolumeResponse :datatype-) "ufomap_srvs/ClearVolumeResponse")
(setf (get ufomap_srvs::ClearVolumeResponse :definition-)
      "# Clear a part of the map, specified by a bounding volume. 
# Sets all voxels inside the bounding volume to ~clamping_thres_min/free space.

# The bounding volume
ufomap_msgs/BoundingVolume bounding_volume
# The depth at which it should be cleared
uint8 depth

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



(provide :ufomap_srvs/ClearVolume "d2fd0d5791e4eff60d2c257423ccf8ba")


