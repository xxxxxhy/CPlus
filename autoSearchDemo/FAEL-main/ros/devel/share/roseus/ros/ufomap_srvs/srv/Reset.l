;; Auto-generated. Do not edit!


(when (boundp 'ufomap_srvs::Reset)
  (if (not (find-package "UFOMAP_SRVS"))
    (make-package "UFOMAP_SRVS"))
  (shadow 'Reset (find-package "UFOMAP_SRVS")))
(unless (find-package "UFOMAP_SRVS::RESET")
  (make-package "UFOMAP_SRVS::RESET"))
(unless (find-package "UFOMAP_SRVS::RESETREQUEST")
  (make-package "UFOMAP_SRVS::RESETREQUEST"))
(unless (find-package "UFOMAP_SRVS::RESETRESPONSE")
  (make-package "UFOMAP_SRVS::RESETRESPONSE"))

(in-package "ROS")





(defclass ufomap_srvs::ResetRequest
  :super ros::object
  :slots (_new_resolution _new_depth_levels ))

(defmethod ufomap_srvs::ResetRequest
  (:init
   (&key
    ((:new_resolution __new_resolution) 0.0)
    ((:new_depth_levels __new_depth_levels) 0)
    )
   (send-super :init)
   (setq _new_resolution (float __new_resolution))
   (setq _new_depth_levels (round __new_depth_levels))
   self)
  (:new_resolution
   (&optional __new_resolution)
   (if __new_resolution (setq _new_resolution __new_resolution)) _new_resolution)
  (:new_depth_levels
   (&optional __new_depth_levels)
   (if __new_depth_levels (setq _new_depth_levels __new_depth_levels)) _new_depth_levels)
  (:serialization-length
   ()
   (+
    ;; float64 _new_resolution
    8
    ;; uint8 _new_depth_levels
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _new_resolution
       (sys::poke _new_resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _new_depth_levels
       (write-byte _new_depth_levels s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _new_resolution
     (setq _new_resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _new_depth_levels
     (setq _new_depth_levels (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ufomap_srvs::ResetResponse
  :super ros::object
  :slots (_success ))

(defmethod ufomap_srvs::ResetResponse
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

(defclass ufomap_srvs::Reset
  :super ros::object
  :slots ())

(setf (get ufomap_srvs::Reset :md5sum-) "98aeec308656a857be8d59d1fb3f81a9")
(setf (get ufomap_srvs::Reset :datatype-) "ufomap_srvs/Reset")
(setf (get ufomap_srvs::Reset :request) ufomap_srvs::ResetRequest)
(setf (get ufomap_srvs::Reset :response) ufomap_srvs::ResetResponse)

(defmethod ufomap_srvs::ResetRequest
  (:response () (instance ufomap_srvs::ResetResponse :init)))

(setf (get ufomap_srvs::ResetRequest :md5sum-) "98aeec308656a857be8d59d1fb3f81a9")
(setf (get ufomap_srvs::ResetRequest :datatype-) "ufomap_srvs/ResetRequest")
(setf (get ufomap_srvs::ResetRequest :definition-)
      "# Resets the complete map.

# The resolution of the new map
float64 new_resolution
# The number of depth levels in the new map
uint8 new_depth_levels
---
# If it was successful
bool success

")

(setf (get ufomap_srvs::ResetResponse :md5sum-) "98aeec308656a857be8d59d1fb3f81a9")
(setf (get ufomap_srvs::ResetResponse :datatype-) "ufomap_srvs/ResetResponse")
(setf (get ufomap_srvs::ResetResponse :definition-)
      "# Resets the complete map.

# The resolution of the new map
float64 new_resolution
# The number of depth levels in the new map
uint8 new_depth_levels
---
# If it was successful
bool success

")



(provide :ufomap_srvs/Reset "98aeec308656a857be8d59d1fb3f81a9")


