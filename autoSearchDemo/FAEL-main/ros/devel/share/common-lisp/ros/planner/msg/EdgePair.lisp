; Auto-generated. Do not edit!


(cl:in-package planner-msg)


;//! \htmlinclude EdgePair.msg.html

(cl:defclass <EdgePair> (roslisp-msg-protocol:ros-message)
  ((edge_id
    :reader edge_id
    :initarg :edge_id
    :type cl:integer
    :initform 0)
   (begin_point
    :reader begin_point
    :initarg :begin_point
    :type planner-msg:IdPointPair
    :initform (cl:make-instance 'planner-msg:IdPointPair))
   (end_point
    :reader end_point
    :initarg :end_point
    :type planner-msg:IdPointPair
    :initform (cl:make-instance 'planner-msg:IdPointPair)))
)

(cl:defclass EdgePair (<EdgePair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EdgePair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EdgePair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-msg:<EdgePair> is deprecated: use planner-msg:EdgePair instead.")))

(cl:ensure-generic-function 'edge_id-val :lambda-list '(m))
(cl:defmethod edge_id-val ((m <EdgePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:edge_id-val is deprecated.  Use planner-msg:edge_id instead.")
  (edge_id m))

(cl:ensure-generic-function 'begin_point-val :lambda-list '(m))
(cl:defmethod begin_point-val ((m <EdgePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:begin_point-val is deprecated.  Use planner-msg:begin_point instead.")
  (begin_point m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <EdgePair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:end_point-val is deprecated.  Use planner-msg:end_point instead.")
  (end_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EdgePair>) ostream)
  "Serializes a message object of type '<EdgePair>"
  (cl:let* ((signed (cl:slot-value msg 'edge_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'begin_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EdgePair>) istream)
  "Deserializes a message object of type '<EdgePair>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'edge_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'begin_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EdgePair>)))
  "Returns string type for a message object of type '<EdgePair>"
  "planner/EdgePair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EdgePair)))
  "Returns string type for a message object of type 'EdgePair"
  "planner/EdgePair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EdgePair>)))
  "Returns md5sum for a message object of type '<EdgePair>"
  "a7f192530926af30a2bd0e4f00396d0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EdgePair)))
  "Returns md5sum for a message object of type 'EdgePair"
  "a7f192530926af30a2bd0e4f00396d0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EdgePair>)))
  "Returns full string definition for message of type '<EdgePair>"
  (cl:format cl:nil "~%int32 edge_id~%IdPointPair begin_point~%IdPointPair end_point~%================================================================================~%MSG: planner/IdPointPair~%int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EdgePair)))
  "Returns full string definition for message of type 'EdgePair"
  (cl:format cl:nil "~%int32 edge_id~%IdPointPair begin_point~%IdPointPair end_point~%================================================================================~%MSG: planner/IdPointPair~%int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EdgePair>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'begin_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EdgePair>))
  "Converts a ROS message object to a list"
  (cl:list 'EdgePair
    (cl:cons ':edge_id (edge_id msg))
    (cl:cons ':begin_point (begin_point msg))
    (cl:cons ':end_point (end_point msg))
))
