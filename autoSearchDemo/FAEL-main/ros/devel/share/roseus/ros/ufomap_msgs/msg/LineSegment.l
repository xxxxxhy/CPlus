;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::LineSegment)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'LineSegment (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::LINESEGMENT")
  (make-package "UFOMAP_MSGS::LINESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude LineSegment.msg.html


(defclass ufomap_msgs::LineSegment
  :super ros::object
  :slots (_start _end ))

(defmethod ufomap_msgs::LineSegment
  (:init
   (&key
    ((:start __start) (instance ufomap_msgs::Point :init))
    ((:end __end) (instance ufomap_msgs::Point :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Point _start
    (send _start :serialization-length)
    ;; ufomap_msgs/Point _end
    (send _end :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Point _start
       (send _start :serialize s)
     ;; ufomap_msgs/Point _end
       (send _end :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; ufomap_msgs/Point _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;;
   self)
  )

(setf (get ufomap_msgs::LineSegment :md5sum-) "ad6f4eea34a193d38008f1d4053cce66")
(setf (get ufomap_msgs::LineSegment :datatype-) "ufomap_msgs/LineSegment")
(setf (get ufomap_msgs::LineSegment :definition-)
      "ufomap_msgs/Point start

ufomap_msgs/Point end
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/LineSegment "ad6f4eea34a193d38008f1d4053cce66")


