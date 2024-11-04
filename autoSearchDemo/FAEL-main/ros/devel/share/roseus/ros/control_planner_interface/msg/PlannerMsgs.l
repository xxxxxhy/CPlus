;; Auto-generated. Do not edit!


(when (boundp 'control_planner_interface::PlannerMsgs)
  (if (not (find-package "CONTROL_PLANNER_INTERFACE"))
    (make-package "CONTROL_PLANNER_INTERFACE"))
  (shadow 'PlannerMsgs (find-package "CONTROL_PLANNER_INTERFACE")))
(unless (find-package "CONTROL_PLANNER_INTERFACE::PLANNERMSGS")
  (make-package "CONTROL_PLANNER_INTERFACE::PLANNERMSGS"))

(in-package "ROS")
;;//! \htmlinclude PlannerMsgs.msg.html


(defclass control_planner_interface::PlannerMsgs
  :super ros::object
  :slots (_current_iteration_id _current_goal_id _is_current_goal_scanned _is_exploration_finished ))

(defmethod control_planner_interface::PlannerMsgs
  (:init
   (&key
    ((:current_iteration_id __current_iteration_id) 0)
    ((:current_goal_id __current_goal_id) 0)
    ((:is_current_goal_scanned __is_current_goal_scanned) nil)
    ((:is_exploration_finished __is_exploration_finished) nil)
    )
   (send-super :init)
   (setq _current_iteration_id (round __current_iteration_id))
   (setq _current_goal_id (round __current_goal_id))
   (setq _is_current_goal_scanned __is_current_goal_scanned)
   (setq _is_exploration_finished __is_exploration_finished)
   self)
  (:current_iteration_id
   (&optional __current_iteration_id)
   (if __current_iteration_id (setq _current_iteration_id __current_iteration_id)) _current_iteration_id)
  (:current_goal_id
   (&optional __current_goal_id)
   (if __current_goal_id (setq _current_goal_id __current_goal_id)) _current_goal_id)
  (:is_current_goal_scanned
   (&optional (__is_current_goal_scanned :null))
   (if (not (eq __is_current_goal_scanned :null)) (setq _is_current_goal_scanned __is_current_goal_scanned)) _is_current_goal_scanned)
  (:is_exploration_finished
   (&optional (__is_exploration_finished :null))
   (if (not (eq __is_exploration_finished :null)) (setq _is_exploration_finished __is_exploration_finished)) _is_exploration_finished)
  (:serialization-length
   ()
   (+
    ;; int32 _current_iteration_id
    4
    ;; int32 _current_goal_id
    4
    ;; bool _is_current_goal_scanned
    1
    ;; bool _is_exploration_finished
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current_iteration_id
       (write-long _current_iteration_id s)
     ;; int32 _current_goal_id
       (write-long _current_goal_id s)
     ;; bool _is_current_goal_scanned
       (if _is_current_goal_scanned (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_exploration_finished
       (if _is_exploration_finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current_iteration_id
     (setq _current_iteration_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_goal_id
     (setq _current_goal_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_current_goal_scanned
     (setq _is_current_goal_scanned (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_exploration_finished
     (setq _is_exploration_finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get control_planner_interface::PlannerMsgs :md5sum-) "8d4c2f6dbcc43449d62d74babfc48846")
(setf (get control_planner_interface::PlannerMsgs :datatype-) "control_planner_interface/PlannerMsgs")
(setf (get control_planner_interface::PlannerMsgs :definition-)
      "
int32 current_iteration_id
int32 current_goal_id   
bool is_current_goal_scanned
bool is_exploration_finished
")



(provide :control_planner_interface/PlannerMsgs "8d4c2f6dbcc43449d62d74babfc48846")


