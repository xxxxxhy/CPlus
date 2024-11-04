; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude Plane.msg.html

(cl:defclass <Plane> (roslisp-msg-protocol:ros-message)
  ((normal
    :reader normal
    :initarg :normal
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Plane (<Plane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<Plane> is deprecated: use ufomap_msgs-msg:Plane instead.")))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:normal-val is deprecated.  Use ufomap_msgs-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:distance-val is deprecated.  Use ufomap_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plane>) ostream)
  "Serializes a message object of type '<Plane>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plane>) istream)
  "Deserializes a message object of type '<Plane>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plane>)))
  "Returns string type for a message object of type '<Plane>"
  "ufomap_msgs/Plane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plane)))
  "Returns string type for a message object of type 'Plane"
  "ufomap_msgs/Plane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plane>)))
  "Returns md5sum for a message object of type '<Plane>"
  "546b8465a41443f1e6383b45dd22a458")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plane)))
  "Returns md5sum for a message object of type 'Plane"
  "546b8465a41443f1e6383b45dd22a458")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plane>)))
  "Returns full string definition for message of type '<Plane>"
  (cl:format cl:nil "ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plane)))
  "Returns full string definition for message of type 'Plane"
  (cl:format cl:nil "ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plane>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plane>))
  "Converts a ROS message object to a list"
  (cl:list 'Plane
    (cl:cons ':normal (normal msg))
    (cl:cons ':distance (distance msg))
))
