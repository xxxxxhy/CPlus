; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude Ray.msg.html

(cl:defclass <Ray> (roslisp-msg-protocol:ros-message)
  ((origin
    :reader origin
    :initarg :origin
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point))
   (direction
    :reader direction
    :initarg :direction
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point)))
)

(cl:defclass Ray (<Ray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<Ray> is deprecated: use ufomap_msgs-msg:Ray instead.")))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <Ray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:origin-val is deprecated.  Use ufomap_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Ray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:direction-val is deprecated.  Use ufomap_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ray>) ostream)
  "Serializes a message object of type '<Ray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ray>) istream)
  "Deserializes a message object of type '<Ray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ray>)))
  "Returns string type for a message object of type '<Ray>"
  "ufomap_msgs/Ray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ray)))
  "Returns string type for a message object of type 'Ray"
  "ufomap_msgs/Ray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ray>)))
  "Returns md5sum for a message object of type '<Ray>"
  "872bd28a8ce427a470e8f663e7effa11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ray)))
  "Returns md5sum for a message object of type 'Ray"
  "872bd28a8ce427a470e8f663e7effa11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ray>)))
  "Returns full string definition for message of type '<Ray>"
  (cl:format cl:nil "ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ray)))
  "Returns full string definition for message of type 'Ray"
  (cl:format cl:nil "ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ray>))
  "Converts a ROS message object to a list"
  (cl:list 'Ray
    (cl:cons ':origin (origin msg))
    (cl:cons ':direction (direction msg))
))
