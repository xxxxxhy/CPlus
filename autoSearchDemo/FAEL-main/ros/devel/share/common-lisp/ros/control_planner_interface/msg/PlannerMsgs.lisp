; Auto-generated. Do not edit!


(cl:in-package control_planner_interface-msg)


;//! \htmlinclude PlannerMsgs.msg.html

(cl:defclass <PlannerMsgs> (roslisp-msg-protocol:ros-message)
  ((current_iteration_id
    :reader current_iteration_id
    :initarg :current_iteration_id
    :type cl:integer
    :initform 0)
   (current_goal_id
    :reader current_goal_id
    :initarg :current_goal_id
    :type cl:integer
    :initform 0)
   (is_current_goal_scanned
    :reader is_current_goal_scanned
    :initarg :is_current_goal_scanned
    :type cl:boolean
    :initform cl:nil)
   (is_exploration_finished
    :reader is_exploration_finished
    :initarg :is_exploration_finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlannerMsgs (<PlannerMsgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerMsgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerMsgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_planner_interface-msg:<PlannerMsgs> is deprecated: use control_planner_interface-msg:PlannerMsgs instead.")))

(cl:ensure-generic-function 'current_iteration_id-val :lambda-list '(m))
(cl:defmethod current_iteration_id-val ((m <PlannerMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_planner_interface-msg:current_iteration_id-val is deprecated.  Use control_planner_interface-msg:current_iteration_id instead.")
  (current_iteration_id m))

(cl:ensure-generic-function 'current_goal_id-val :lambda-list '(m))
(cl:defmethod current_goal_id-val ((m <PlannerMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_planner_interface-msg:current_goal_id-val is deprecated.  Use control_planner_interface-msg:current_goal_id instead.")
  (current_goal_id m))

(cl:ensure-generic-function 'is_current_goal_scanned-val :lambda-list '(m))
(cl:defmethod is_current_goal_scanned-val ((m <PlannerMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_planner_interface-msg:is_current_goal_scanned-val is deprecated.  Use control_planner_interface-msg:is_current_goal_scanned instead.")
  (is_current_goal_scanned m))

(cl:ensure-generic-function 'is_exploration_finished-val :lambda-list '(m))
(cl:defmethod is_exploration_finished-val ((m <PlannerMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_planner_interface-msg:is_exploration_finished-val is deprecated.  Use control_planner_interface-msg:is_exploration_finished instead.")
  (is_exploration_finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerMsgs>) ostream)
  "Serializes a message object of type '<PlannerMsgs>"
  (cl:let* ((signed (cl:slot-value msg 'current_iteration_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_goal_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_current_goal_scanned) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_exploration_finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerMsgs>) istream)
  "Deserializes a message object of type '<PlannerMsgs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_iteration_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_goal_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_current_goal_scanned) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_exploration_finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerMsgs>)))
  "Returns string type for a message object of type '<PlannerMsgs>"
  "control_planner_interface/PlannerMsgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerMsgs)))
  "Returns string type for a message object of type 'PlannerMsgs"
  "control_planner_interface/PlannerMsgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerMsgs>)))
  "Returns md5sum for a message object of type '<PlannerMsgs>"
  "8d4c2f6dbcc43449d62d74babfc48846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerMsgs)))
  "Returns md5sum for a message object of type 'PlannerMsgs"
  "8d4c2f6dbcc43449d62d74babfc48846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerMsgs>)))
  "Returns full string definition for message of type '<PlannerMsgs>"
  (cl:format cl:nil "~%int32 current_iteration_id~%int32 current_goal_id   ~%bool is_current_goal_scanned~%bool is_exploration_finished~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerMsgs)))
  "Returns full string definition for message of type 'PlannerMsgs"
  (cl:format cl:nil "~%int32 current_iteration_id~%int32 current_goal_id   ~%bool is_current_goal_scanned~%bool is_exploration_finished~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerMsgs>))
  (cl:+ 0
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerMsgs>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerMsgs
    (cl:cons ':current_iteration_id (current_iteration_id msg))
    (cl:cons ':current_goal_id (current_goal_id msg))
    (cl:cons ':is_current_goal_scanned (is_current_goal_scanned msg))
    (cl:cons ':is_exploration_finished (is_exploration_finished msg))
))
