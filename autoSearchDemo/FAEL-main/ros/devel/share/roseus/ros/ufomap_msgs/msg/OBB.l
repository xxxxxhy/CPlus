;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::OBB)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'OBB (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::OBB")
  (make-package "UFOMAP_MSGS::OBB"))

(in-package "ROS")
;;//! \htmlinclude OBB.msg.html


(defclass ufomap_msgs::OBB
  :super ros::object
  :slots (_center _half_size _rotation ))

(defmethod ufomap_msgs::OBB
  (:init
   (&key
    ((:center __center) (instance ufomap_msgs::Point :init))
    ((:half_size __half_size) (instance ufomap_msgs::Point :init))
    ((:rotation __rotation) (instance ufomap_msgs::Point :init))
    )
   (send-super :init)
   (setq _center __center)
   (setq _half_size __half_size)
   (setq _rotation __rotation)
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:half_size
   (&rest __half_size)
   (if (keywordp (car __half_size))
       (send* _half_size __half_size)
     (progn
       (if __half_size (setq _half_size (car __half_size)))
       _half_size)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Point _center
    (send _center :serialization-length)
    ;; ufomap_msgs/Point _half_size
    (send _half_size :serialization-length)
    ;; ufomap_msgs/Point _rotation
    (send _rotation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Point _center
       (send _center :serialize s)
     ;; ufomap_msgs/Point _half_size
       (send _half_size :serialize s)
     ;; ufomap_msgs/Point _rotation
       (send _rotation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; ufomap_msgs/Point _half_size
     (send _half_size :deserialize buf ptr-) (incf ptr- (send _half_size :serialization-length))
   ;; ufomap_msgs/Point _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;;
   self)
  )

(setf (get ufomap_msgs::OBB :md5sum-) "e931b8e26c2b1c2b5808b3eacdf69e3d")
(setf (get ufomap_msgs::OBB :datatype-) "ufomap_msgs/OBB")
(setf (get ufomap_msgs::OBB :definition-)
      "ufomap_msgs/Point center

ufomap_msgs/Point half_size

ufomap_msgs/Point rotation
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/OBB "e931b8e26c2b1c2b5808b3eacdf69e3d")


