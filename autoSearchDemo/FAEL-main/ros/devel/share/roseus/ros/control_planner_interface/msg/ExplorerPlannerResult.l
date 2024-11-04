;; Auto-generated. Do not edit!


(when (boundp 'control_planner_interface::ExplorerPlannerResult)
  (if (not (find-package "CONTROL_PLANNER_INTERFACE"))
    (make-package "CONTROL_PLANNER_INTERFACE"))
  (shadow 'ExplorerPlannerResult (find-package "CONTROL_PLANNER_INTERFACE")))
(unless (find-package "CONTROL_PLANNER_INTERFACE::EXPLORERPLANNERRESULT")
  (make-package "CONTROL_PLANNER_INTERFACE::EXPLORERPLANNERRESULT"))

(in-package "ROS")
;;//! \htmlinclude ExplorerPlannerResult.msg.html


(defclass control_planner_interface::ExplorerPlannerResult
  :super ros::object
  :slots (_paths ))

(defmethod control_planner_interface::ExplorerPlannerResult
  (:init
   (&key
    ((:paths __paths) ())
    )
   (send-super :init)
   (setq _paths __paths)
   self)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:serialization-length
   ()
   (+
    ;; control_planner_interface/Path[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; control_planner_interface/Path[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; control_planner_interface/Path[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance control_planner_interface::Path :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get control_planner_interface::ExplorerPlannerResult :md5sum-) "e6096c7a4bd8897c92de88df9f0c3da7")
(setf (get control_planner_interface::ExplorerPlannerResult :datatype-) "control_planner_interface/ExplorerPlannerResult")
(setf (get control_planner_interface::ExplorerPlannerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
Path[]  paths


================================================================================
MSG: control_planner_interface/Path
geometry_msgs/Pose[] path
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :control_planner_interface/ExplorerPlannerResult "e6096c7a4bd8897c92de88df9f0c3da7")

