; Auto-generated. Do not edit!


(cl:in-package planner-msg)


;//! \htmlinclude RoadMapMsg.msg.html

(cl:defclass <RoadMapMsg> (roslisp-msg-protocol:ros-message)
  ((id_point_pair_list
    :reader id_point_pair_list
    :initarg :id_point_pair_list
    :type (cl:vector planner-msg:IdPointPair)
   :initform (cl:make-array 0 :element-type 'planner-msg:IdPointPair :initial-element (cl:make-instance 'planner-msg:IdPointPair)))
   (edge_pair_list
    :reader edge_pair_list
    :initarg :edge_pair_list
    :type (cl:vector planner-msg:EdgePair)
   :initform (cl:make-array 0 :element-type 'planner-msg:EdgePair :initial-element (cl:make-instance 'planner-msg:EdgePair))))
)

(cl:defclass RoadMapMsg (<RoadMapMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMapMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMapMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-msg:<RoadMapMsg> is deprecated: use planner-msg:RoadMapMsg instead.")))

(cl:ensure-generic-function 'id_point_pair_list-val :lambda-list '(m))
(cl:defmethod id_point_pair_list-val ((m <RoadMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:id_point_pair_list-val is deprecated.  Use planner-msg:id_point_pair_list instead.")
  (id_point_pair_list m))

(cl:ensure-generic-function 'edge_pair_list-val :lambda-list '(m))
(cl:defmethod edge_pair_list-val ((m <RoadMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:edge_pair_list-val is deprecated.  Use planner-msg:edge_pair_list instead.")
  (edge_pair_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMapMsg>) ostream)
  "Serializes a message object of type '<RoadMapMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id_point_pair_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'id_point_pair_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edge_pair_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edge_pair_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMapMsg>) istream)
  "Deserializes a message object of type '<RoadMapMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id_point_pair_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id_point_pair_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planner-msg:IdPointPair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edge_pair_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edge_pair_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planner-msg:EdgePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMapMsg>)))
  "Returns string type for a message object of type '<RoadMapMsg>"
  "planner/RoadMapMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMapMsg)))
  "Returns string type for a message object of type 'RoadMapMsg"
  "planner/RoadMapMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMapMsg>)))
  "Returns md5sum for a message object of type '<RoadMapMsg>"
  "29d560d0f11813d6df50b9dbb4c10ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMapMsg)))
  "Returns md5sum for a message object of type 'RoadMapMsg"
  "29d560d0f11813d6df50b9dbb4c10ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMapMsg>)))
  "Returns full string definition for message of type '<RoadMapMsg>"
  (cl:format cl:nil "~%IdPointPair[] id_point_pair_list~%EdgePair[] edge_pair_list~%================================================================================~%MSG: planner/IdPointPair~%int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planner/EdgePair~%~%int32 edge_id~%IdPointPair begin_point~%IdPointPair end_point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMapMsg)))
  "Returns full string definition for message of type 'RoadMapMsg"
  (cl:format cl:nil "~%IdPointPair[] id_point_pair_list~%EdgePair[] edge_pair_list~%================================================================================~%MSG: planner/IdPointPair~%int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planner/EdgePair~%~%int32 edge_id~%IdPointPair begin_point~%IdPointPair end_point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMapMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_point_pair_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edge_pair_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMapMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMapMsg
    (cl:cons ':id_point_pair_list (id_point_pair_list msg))
    (cl:cons ':edge_pair_list (edge_pair_list msg))
))
