; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude OBB.msg.html

(cl:defclass <OBB> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point))
   (half_size
    :reader half_size
    :initarg :half_size
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point))
   (rotation
    :reader rotation
    :initarg :rotation
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point)))
)

(cl:defclass OBB (<OBB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OBB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OBB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<OBB> is deprecated: use ufomap_msgs-msg:OBB instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <OBB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:center-val is deprecated.  Use ufomap_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'half_size-val :lambda-list '(m))
(cl:defmethod half_size-val ((m <OBB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:half_size-val is deprecated.  Use ufomap_msgs-msg:half_size instead.")
  (half_size m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <OBB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:rotation-val is deprecated.  Use ufomap_msgs-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OBB>) ostream)
  "Serializes a message object of type '<OBB>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'half_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OBB>) istream)
  "Deserializes a message object of type '<OBB>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'half_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OBB>)))
  "Returns string type for a message object of type '<OBB>"
  "ufomap_msgs/OBB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OBB)))
  "Returns string type for a message object of type 'OBB"
  "ufomap_msgs/OBB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OBB>)))
  "Returns md5sum for a message object of type '<OBB>"
  "e931b8e26c2b1c2b5808b3eacdf69e3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OBB)))
  "Returns md5sum for a message object of type 'OBB"
  "e931b8e26c2b1c2b5808b3eacdf69e3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OBB>)))
  "Returns full string definition for message of type '<OBB>"
  (cl:format cl:nil "ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OBB)))
  "Returns full string definition for message of type 'OBB"
  (cl:format cl:nil "ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OBB>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'half_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OBB>))
  "Converts a ROS message object to a list"
  (cl:list 'OBB
    (cl:cons ':center (center msg))
    (cl:cons ':half_size (half_size msg))
    (cl:cons ':rotation (rotation msg))
))
