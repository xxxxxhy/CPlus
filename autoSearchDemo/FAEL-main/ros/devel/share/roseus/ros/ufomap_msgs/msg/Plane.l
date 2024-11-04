;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::Plane)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'Plane (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::PLANE")
  (make-package "UFOMAP_MSGS::PLANE"))

(in-package "ROS")
;;//! \htmlinclude Plane.msg.html


(defclass ufomap_msgs::Plane
  :super ros::object
  :slots (_normal _distance ))

(defmethod ufomap_msgs::Plane
  (:init
   (&key
    ((:normal __normal) (instance ufomap_msgs::Point :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _normal __normal)
   (setq _distance (float __distance))
   self)
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Point _normal
    (send _normal :serialization-length)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Point _normal
       (send _normal :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Point _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ufomap_msgs::Plane :md5sum-) "546b8465a41443f1e6383b45dd22a458")
(setf (get ufomap_msgs::Plane :datatype-) "ufomap_msgs/Plane")
(setf (get ufomap_msgs::Plane :definition-)
      "ufomap_msgs/Point normal

float64 distance
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/Plane "546b8465a41443f1e6383b45dd22a458")


