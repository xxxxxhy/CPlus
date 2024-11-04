;; Auto-generated. Do not edit!


(when (boundp 'control_planner_interface::Path)
  (if (not (find-package "CONTROL_PLANNER_INTERFACE"))
    (make-package "CONTROL_PLANNER_INTERFACE"))
  (shadow 'Path (find-package "CONTROL_PLANNER_INTERFACE")))
(unless (find-package "CONTROL_PLANNER_INTERFACE::PATH")
  (make-package "CONTROL_PLANNER_INTERFACE::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass control_planner_interface::Path
  :super ros::object
  :slots (_path ))

(defmethod control_planner_interface::Path
  (:init
   (&key
    ((:path __path) ())
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get control_planner_interface::Path :md5sum-) "3672a680f9a8e1a187c20ffb2e3a206b")
(setf (get control_planner_interface::Path :datatype-) "control_planner_interface/Path")
(setf (get control_planner_interface::Path :definition-)
      "geometry_msgs/Pose[] path
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



(provide :control_planner_interface/Path "3672a680f9a8e1a187c20ffb2e3a206b")


