;; Auto-generated. Do not edit!


(when (boundp 'planner::EdgePair)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'EdgePair (find-package "PLANNER")))
(unless (find-package "PLANNER::EDGEPAIR")
  (make-package "PLANNER::EDGEPAIR"))

(in-package "ROS")
;;//! \htmlinclude EdgePair.msg.html


(defclass planner::EdgePair
  :super ros::object
  :slots (_edge_id _begin_point _end_point ))

(defmethod planner::EdgePair
  (:init
   (&key
    ((:edge_id __edge_id) 0)
    ((:begin_point __begin_point) (instance planner::IdPointPair :init))
    ((:end_point __end_point) (instance planner::IdPointPair :init))
    )
   (send-super :init)
   (setq _edge_id (round __edge_id))
   (setq _begin_point __begin_point)
   (setq _end_point __end_point)
   self)
  (:edge_id
   (&optional __edge_id)
   (if __edge_id (setq _edge_id __edge_id)) _edge_id)
  (:begin_point
   (&rest __begin_point)
   (if (keywordp (car __begin_point))
       (send* _begin_point __begin_point)
     (progn
       (if __begin_point (setq _begin_point (car __begin_point)))
       _begin_point)))
  (:end_point
   (&rest __end_point)
   (if (keywordp (car __end_point))
       (send* _end_point __end_point)
     (progn
       (if __end_point (setq _end_point (car __end_point)))
       _end_point)))
  (:serialization-length
   ()
   (+
    ;; int32 _edge_id
    4
    ;; planner/IdPointPair _begin_point
    (send _begin_point :serialization-length)
    ;; planner/IdPointPair _end_point
    (send _end_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _edge_id
       (write-long _edge_id s)
     ;; planner/IdPointPair _begin_point
       (send _begin_point :serialize s)
     ;; planner/IdPointPair _end_point
       (send _end_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _edge_id
     (setq _edge_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; planner/IdPointPair _begin_point
     (send _begin_point :deserialize buf ptr-) (incf ptr- (send _begin_point :serialization-length))
   ;; planner/IdPointPair _end_point
     (send _end_point :deserialize buf ptr-) (incf ptr- (send _end_point :serialization-length))
   ;;
   self)
  )

(setf (get planner::EdgePair :md5sum-) "a7f192530926af30a2bd0e4f00396d0a")
(setf (get planner::EdgePair :datatype-) "planner/EdgePair")
(setf (get planner::EdgePair :definition-)
      "
int32 edge_id
IdPointPair begin_point
IdPointPair end_point
================================================================================
MSG: planner/IdPointPair
int32 id
geometry_msgs/Point point
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :planner/EdgePair "a7f192530926af30a2bd0e4f00396d0a")


