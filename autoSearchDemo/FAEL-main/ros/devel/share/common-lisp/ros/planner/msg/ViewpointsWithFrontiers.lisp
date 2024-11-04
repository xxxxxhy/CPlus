; Auto-generated. Do not edit!


(cl:in-package planner-msg)


;//! \htmlinclude ViewpointsWithFrontiers.msg.html

(cl:defclass <ViewpointsWithFrontiers> (roslisp-msg-protocol:ros-message)
  ((view_point
    :reader view_point
    :initarg :view_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (frontiers
    :reader frontiers
    :initarg :frontiers
    :type (cl:vector ufomap_manager-msg:CellCode)
   :initform (cl:make-array 0 :element-type 'ufomap_manager-msg:CellCode :initial-element (cl:make-instance 'ufomap_manager-msg:CellCode))))
)

(cl:defclass ViewpointsWithFrontiers (<ViewpointsWithFrontiers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ViewpointsWithFrontiers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ViewpointsWithFrontiers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-msg:<ViewpointsWithFrontiers> is deprecated: use planner-msg:ViewpointsWithFrontiers instead.")))

(cl:ensure-generic-function 'view_point-val :lambda-list '(m))
(cl:defmethod view_point-val ((m <ViewpointsWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:view_point-val is deprecated.  Use planner-msg:view_point instead.")
  (view_point m))

(cl:ensure-generic-function 'frontiers-val :lambda-list '(m))
(cl:defmethod frontiers-val ((m <ViewpointsWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:frontiers-val is deprecated.  Use planner-msg:frontiers instead.")
  (frontiers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ViewpointsWithFrontiers>) ostream)
  "Serializes a message object of type '<ViewpointsWithFrontiers>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'view_point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frontiers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ViewpointsWithFrontiers>) istream)
  "Deserializes a message object of type '<ViewpointsWithFrontiers>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'view_point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ufomap_manager-msg:CellCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ViewpointsWithFrontiers>)))
  "Returns string type for a message object of type '<ViewpointsWithFrontiers>"
  "planner/ViewpointsWithFrontiers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ViewpointsWithFrontiers)))
  "Returns string type for a message object of type 'ViewpointsWithFrontiers"
  "planner/ViewpointsWithFrontiers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ViewpointsWithFrontiers>)))
  "Returns md5sum for a message object of type '<ViewpointsWithFrontiers>"
  "52c4c3a872cbd5edd9e44ac6b909d63c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ViewpointsWithFrontiers)))
  "Returns md5sum for a message object of type 'ViewpointsWithFrontiers"
  "52c4c3a872cbd5edd9e44ac6b909d63c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ViewpointsWithFrontiers>)))
  "Returns full string definition for message of type '<ViewpointsWithFrontiers>"
  (cl:format cl:nil "~%geometry_msgs/Point view_point~%ufomap_manager/CellCode[] frontiers~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ufomap_manager/CellCode~%uint32 depth~%uint64 Code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ViewpointsWithFrontiers)))
  "Returns full string definition for message of type 'ViewpointsWithFrontiers"
  (cl:format cl:nil "~%geometry_msgs/Point view_point~%ufomap_manager/CellCode[] frontiers~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ufomap_manager/CellCode~%uint32 depth~%uint64 Code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ViewpointsWithFrontiers>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'view_point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ViewpointsWithFrontiers>))
  "Converts a ROS message object to a list"
  (cl:list 'ViewpointsWithFrontiers
    (cl:cons ':view_point (view_point msg))
    (cl:cons ':frontiers (frontiers msg))
))
