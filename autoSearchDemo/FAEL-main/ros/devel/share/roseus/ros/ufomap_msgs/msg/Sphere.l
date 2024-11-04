;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::Sphere)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'Sphere (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::SPHERE")
  (make-package "UFOMAP_MSGS::SPHERE"))

(in-package "ROS")
;;//! \htmlinclude Sphere.msg.html


(defclass ufomap_msgs::Sphere
  :super ros::object
  :slots (_center _radius ))

(defmethod ufomap_msgs::Sphere
  (:init
   (&key
    ((:center __center) (instance ufomap_msgs::Point :init))
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _radius (float __radius))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Point _center
    (send _center :serialization-length)
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Point _center
       (send _center :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ufomap_msgs::Sphere :md5sum-) "ab296cd39c1a1fa7dd67209d6a4767e1")
(setf (get ufomap_msgs::Sphere :datatype-) "ufomap_msgs/Sphere")
(setf (get ufomap_msgs::Sphere :definition-)
      "ufomap_msgs/Point center

float64 radius
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/Sphere "ab296cd39c1a1fa7dd67209d6a4767e1")


