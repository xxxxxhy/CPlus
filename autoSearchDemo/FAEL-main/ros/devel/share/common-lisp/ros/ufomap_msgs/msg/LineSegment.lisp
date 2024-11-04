; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude LineSegment.msg.html

(cl:defclass <LineSegment> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point))
   (end
    :reader end
    :initarg :end
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point)))
)

(cl:defclass LineSegment (<LineSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<LineSegment> is deprecated: use ufomap_msgs-msg:LineSegment instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <LineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:start-val is deprecated.  Use ufomap_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <LineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:end-val is deprecated.  Use ufomap_msgs-msg:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineSegment>) ostream)
  "Serializes a message object of type '<LineSegment>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineSegment>) istream)
  "Deserializes a message object of type '<LineSegment>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineSegment>)))
  "Returns string type for a message object of type '<LineSegment>"
  "ufomap_msgs/LineSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineSegment)))
  "Returns string type for a message object of type 'LineSegment"
  "ufomap_msgs/LineSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineSegment>)))
  "Returns md5sum for a message object of type '<LineSegment>"
  "ad6f4eea34a193d38008f1d4053cce66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineSegment)))
  "Returns md5sum for a message object of type 'LineSegment"
  "ad6f4eea34a193d38008f1d4053cce66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineSegment>)))
  "Returns full string definition for message of type '<LineSegment>"
  (cl:format cl:nil "ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineSegment)))
  "Returns full string definition for message of type 'LineSegment"
  (cl:format cl:nil "ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineSegment>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'LineSegment
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
