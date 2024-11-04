; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude AABB.msg.html

(cl:defclass <AABB> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point))
   (half_size
    :reader half_size
    :initarg :half_size
    :type ufomap_msgs-msg:Point
    :initform (cl:make-instance 'ufomap_msgs-msg:Point)))
)

(cl:defclass AABB (<AABB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AABB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AABB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<AABB> is deprecated: use ufomap_msgs-msg:AABB instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <AABB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:center-val is deprecated.  Use ufomap_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'half_size-val :lambda-list '(m))
(cl:defmethod half_size-val ((m <AABB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:half_size-val is deprecated.  Use ufomap_msgs-msg:half_size instead.")
  (half_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AABB>) ostream)
  "Serializes a message object of type '<AABB>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'half_size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AABB>) istream)
  "Deserializes a message object of type '<AABB>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'half_size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AABB>)))
  "Returns string type for a message object of type '<AABB>"
  "ufomap_msgs/AABB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AABB)))
  "Returns string type for a message object of type 'AABB"
  "ufomap_msgs/AABB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AABB>)))
  "Returns md5sum for a message object of type '<AABB>"
  "4a91d419c2baa82eb1e98d52b2c2f149")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AABB)))
  "Returns md5sum for a message object of type 'AABB"
  "4a91d419c2baa82eb1e98d52b2c2f149")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AABB>)))
  "Returns full string definition for message of type '<AABB>"
  (cl:format cl:nil "ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AABB)))
  "Returns full string definition for message of type 'AABB"
  (cl:format cl:nil "ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AABB>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'half_size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AABB>))
  "Converts a ROS message object to a list"
  (cl:list 'AABB
    (cl:cons ':center (center msg))
    (cl:cons ':half_size (half_size msg))
))
