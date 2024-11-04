;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::AABB)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'AABB (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::AABB")
  (make-package "UFOMAP_MSGS::AABB"))

(in-package "ROS")
;;//! \htmlinclude AABB.msg.html


(defclass ufomap_msgs::AABB
  :super ros::object
  :slots (_center _half_size ))

(defmethod ufomap_msgs::AABB
  (:init
   (&key
    ((:center __center) (instance ufomap_msgs::Point :init))
    ((:half_size __half_size) (instance ufomap_msgs::Point :init))
    )
   (send-super :init)
   (setq _center __center)
   (setq _half_size __half_size)
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
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Point _center
    (send _center :serialization-length)
    ;; ufomap_msgs/Point _half_size
    (send _half_size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Point _center
       (send _center :serialize s)
     ;; ufomap_msgs/Point _half_size
       (send _half_size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; ufomap_msgs/Point _half_size
     (send _half_size :deserialize buf ptr-) (incf ptr- (send _half_size :serialization-length))
   ;;
   self)
  )

(setf (get ufomap_msgs::AABB :md5sum-) "4a91d419c2baa82eb1e98d52b2c2f149")
(setf (get ufomap_msgs::AABB :datatype-) "ufomap_msgs/AABB")
(setf (get ufomap_msgs::AABB :definition-)
      "ufomap_msgs/Point center

ufomap_msgs/Point half_size
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/AABB "4a91d419c2baa82eb1e98d52b2c2f149")


