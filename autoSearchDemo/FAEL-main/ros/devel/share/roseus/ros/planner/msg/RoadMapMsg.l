;; Auto-generated. Do not edit!


(when (boundp 'planner::RoadMapMsg)
  (if (not (find-package "PLANNER"))
    (make-package "PLANNER"))
  (shadow 'RoadMapMsg (find-package "PLANNER")))
(unless (find-package "PLANNER::ROADMAPMSG")
  (make-package "PLANNER::ROADMAPMSG"))

(in-package "ROS")
;;//! \htmlinclude RoadMapMsg.msg.html


(defclass planner::RoadMapMsg
  :super ros::object
  :slots (_id_point_pair_list _edge_pair_list ))

(defmethod planner::RoadMapMsg
  (:init
   (&key
    ((:id_point_pair_list __id_point_pair_list) ())
    ((:edge_pair_list __edge_pair_list) ())
    )
   (send-super :init)
   (setq _id_point_pair_list __id_point_pair_list)
   (setq _edge_pair_list __edge_pair_list)
   self)
  (:id_point_pair_list
   (&rest __id_point_pair_list)
   (if (keywordp (car __id_point_pair_list))
       (send* _id_point_pair_list __id_point_pair_list)
     (progn
       (if __id_point_pair_list (setq _id_point_pair_list (car __id_point_pair_list)))
       _id_point_pair_list)))
  (:edge_pair_list
   (&rest __edge_pair_list)
   (if (keywordp (car __edge_pair_list))
       (send* _edge_pair_list __edge_pair_list)
     (progn
       (if __edge_pair_list (setq _edge_pair_list (car __edge_pair_list)))
       _edge_pair_list)))
  (:serialization-length
   ()
   (+
    ;; planner/IdPointPair[] _id_point_pair_list
    (apply #'+ (send-all _id_point_pair_list :serialization-length)) 4
    ;; planner/EdgePair[] _edge_pair_list
    (apply #'+ (send-all _edge_pair_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planner/IdPointPair[] _id_point_pair_list
     (write-long (length _id_point_pair_list) s)
     (dolist (elem _id_point_pair_list)
       (send elem :serialize s)
       )
     ;; planner/EdgePair[] _edge_pair_list
     (write-long (length _edge_pair_list) s)
     (dolist (elem _edge_pair_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planner/IdPointPair[] _id_point_pair_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id_point_pair_list (let (r) (dotimes (i n) (push (instance planner::IdPointPair :init) r)) r))
     (dolist (elem- _id_point_pair_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planner/EdgePair[] _edge_pair_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edge_pair_list (let (r) (dotimes (i n) (push (instance planner::EdgePair :init) r)) r))
     (dolist (elem- _edge_pair_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planner::RoadMapMsg :md5sum-) "29d560d0f11813d6df50b9dbb4c10ec2")
(setf (get planner::RoadMapMsg :datatype-) "planner/RoadMapMsg")
(setf (get planner::RoadMapMsg :definition-)
      "
IdPointPair[] id_point_pair_list
EdgePair[] edge_pair_list
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

================================================================================
MSG: planner/EdgePair

int32 edge_id
IdPointPair begin_point
IdPointPair end_point
")



(provide :planner/RoadMapMsg "29d560d0f11813d6df50b9dbb4c10ec2")


