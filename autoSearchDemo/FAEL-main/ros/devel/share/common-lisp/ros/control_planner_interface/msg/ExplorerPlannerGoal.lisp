; Auto-generated. Do not edit!


(cl:in-package control_planner_interface-msg)


;//! \htmlinclude ExplorerPlannerGoal.msg.html

(cl:defclass <ExplorerPlannerGoal> (roslisp-msg-protocol:ros-message)
  ((iteration_id
    :reader iteration_id
    :initarg :iteration_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ExplorerPlannerGoal (<ExplorerPlannerGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExplorerPlannerGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExplorerPlannerGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_planner_interface-msg:<ExplorerPlannerGoal> is deprecated: use control_planner_interface-msg:ExplorerPlannerGoal instead.")))

(cl:ensure-generic-function 'iteration_id-val :lambda-list '(m))
(cl:defmethod iteration_id-val ((m <ExplorerPlannerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_planner_interface-msg:iteration_id-val is deprecated.  Use control_planner_interface-msg:iteration_id instead.")
  (iteration_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExplorerPlannerGoal>) ostream)
  "Serializes a message object of type '<ExplorerPlannerGoal>"
  (cl:let* ((signed (cl:slot-value msg 'iteration_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExplorerPlannerGoal>) istream)
  "Deserializes a message object of type '<ExplorerPlannerGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iteration_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExplorerPlannerGoal>)))
  "Returns string type for a message object of type '<ExplorerPlannerGoal>"
  "control_planner_interface/ExplorerPlannerGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExplorerPlannerGoal)))
  "Returns string type for a message object of type 'ExplorerPlannerGoal"
  "control_planner_interface/ExplorerPlannerGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExplorerPlannerGoal>)))
  "Returns md5sum for a message object of type '<ExplorerPlannerGoal>"
  "374377ab10495f5a9792cd599df80faf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExplorerPlannerGoal)))
  "Returns md5sum for a message object of type 'ExplorerPlannerGoal"
  "374377ab10495f5a9792cd599df80faf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExplorerPlannerGoal>)))
  "Returns full string definition for message of type '<ExplorerPlannerGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%int32 iteration_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExplorerPlannerGoal)))
  "Returns full string definition for message of type 'ExplorerPlannerGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%int32 iteration_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExplorerPlannerGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExplorerPlannerGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExplorerPlannerGoal
    (cl:cons ':iteration_id (iteration_id msg))
))
