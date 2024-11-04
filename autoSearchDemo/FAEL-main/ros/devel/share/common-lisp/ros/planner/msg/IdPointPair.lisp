; Auto-generated. Do not edit!


(cl:in-package planner-msg)


;//! \htmlinclude IdPointPair.msg.html

(cl:defclass <IdPointPair> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass IdPointPair (<IdPointPair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IdPointPair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IdPointPair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-msg:<IdPointPair> is deprecated: use planner-msg:IdPointPair instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IdPointPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:id-val is deprecated.  Use planner-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <IdPointPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:point-val is deprecated.  Use planner-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IdPointPair>) ostream)
  "Serializes a message object of type '<IdPointPair>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IdPointPair>) istream)
  "Deserializes a message object of type '<IdPointPair>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IdPointPair>)))
  "Returns string type for a message object of type '<IdPointPair>"
  "planner/IdPointPair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IdPointPair)))
  "Returns string type for a message object of type 'IdPointPair"
  "planner/IdPointPair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IdPointPair>)))
  "Returns md5sum for a message object of type '<IdPointPair>"
  "039fd761ab13b0a87ce0c7bb4c023250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IdPointPair)))
  "Returns md5sum for a message object of type 'IdPointPair"
  "039fd761ab13b0a87ce0c7bb4c023250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IdPointPair>)))
  "Returns full string definition for message of type '<IdPointPair>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IdPointPair)))
  "Returns full string definition for message of type 'IdPointPair"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IdPointPair>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IdPointPair>))
  "Converts a ROS message object to a list"
  (cl:list 'IdPointPair
    (cl:cons ':id (id msg))
    (cl:cons ':point (point msg))
))
