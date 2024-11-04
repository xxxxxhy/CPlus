;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::Ray)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'Ray (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::RAY")
  (make-package "UFOMAP_MSGS::RAY"))

(in-package "ROS")
;;//! \htmlinclude Ray.msg.html


(defclass ufomap_msgs::Ray
  :super ros::object
  :slots (_origin _direction ))

(defmethod ufomap_msgs::Ray
  (:init
   (&key
    ((:origin __origin) (instance ufomap_msgs::Point :init))
    ((:direction __direction) (instance ufomap_msgs::Point :init))
    )
   (send-super :init)
   (setq _origin __origin)
   (setq _direction __direction)
   self)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Point _origin
    (send _origin :serialization-length)
    ;; ufomap_msgs/Point _direction
    (send _direction :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Point _origin
       (send _origin :serialize s)
     ;; ufomap_msgs/Point _direction
       (send _direction :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Point _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; ufomap_msgs/Point _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;;
   self)
  )

(setf (get ufomap_msgs::Ray :md5sum-) "872bd28a8ce427a470e8f663e7effa11")
(setf (get ufomap_msgs::Ray :datatype-) "ufomap_msgs/Ray")
(setf (get ufomap_msgs::Ray :definition-)
      "ufomap_msgs/Point origin

ufomap_msgs/Point direction
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/Ray "872bd28a8ce427a470e8f663e7effa11")


