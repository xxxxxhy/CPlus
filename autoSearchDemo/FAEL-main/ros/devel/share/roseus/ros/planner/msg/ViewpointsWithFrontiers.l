;; Auto-generated. Do not edit!


(when (boundp 'planner::ViewpointsWithFrontiers)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'ViewpointsWithFrontiers (find-package "PLANNER")))
(unless (find-package "PLANNER::VIEWPOINTSWITHFRONTIERS")
  (make-package "PLANNER::VIEWPOINTSWITHFRONTIERS"))

(in-package "ROS")
;;//! \htmlinclude ViewpointsWithFrontiers.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "UFOMAP_MANAGER"))
  (ros::roseus-add-msgs "ufomap_manager"))


(defclass planner::ViewpointsWithFrontiers
  :super ros::object
  :slots (_view_point _frontiers ))

(defmethod planner::ViewpointsWithFrontiers
  (:init
   (&key
    ((:view_point __view_point) (instance geometry_msgs::Point :init))
    ((:frontiers __frontiers) ())
    )
   (send-super :init)
   (setq _view_point __view_point)
   (setq _frontiers __frontiers)
   self)
  (:view_point
   (&rest __view_point)
   (if (keywordp (car __view_point))
       (send* _view_point __view_point)
     (progn
       (if __view_point (setq _view_point (car __view_point)))
       _view_point)))
  (:frontiers
   (&rest __frontiers)
   (if (keywordp (car __frontiers))
       (send* _frontiers __frontiers)
     (progn
       (if __frontiers (setq _frontiers (car __frontiers)))
       _frontiers)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _view_point
    (send _view_point :serialization-length)
    ;; ufomap_manager/CellCode[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _view_point
       (send _view_point :serialize s)
     ;; ufomap_manager/CellCode[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _view_point
     (send _view_point :deserialize buf ptr-) (incf ptr- (send _view_point :serialization-length))
   ;; ufomap_manager/CellCode[] _frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers (let (r) (dotimes (i n) (push (instance ufomap_manager::CellCode :init) r)) r))
     (dolist (elem- _frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planner::ViewpointsWithFrontiers :md5sum-) "52c4c3a872cbd5edd9e44ac6b909d63c")
(setf (get planner::ViewpointsWithFrontiers :datatype-) "planner/ViewpointsWithFrontiers")
(setf (get planner::ViewpointsWithFrontiers :definition-)
      "
geometry_msgs/Point view_point
ufomap_manager/CellCode[] frontiers
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: ufomap_manager/CellCode
uint32 depth
uint64 Code

")



(provide :planner/ViewpointsWithFrontiers "52c4c3a872cbd5edd9e44ac6b909d63c")


