; Auto-generated. Do not edit!


(cl:in-package visualization_tools-msg)


;//! \htmlinclude ExploredVolumeTravedDist.msg.html

(cl:defclass <ExploredVolumeTravedDist> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (exploredVolume
    :reader exploredVolume
    :initarg :exploredVolume
    :type cl:float
    :initform 0.0)
   (travedDist
    :reader travedDist
    :initarg :travedDist
    :type cl:float
    :initform 0.0))
)

(cl:defclass ExploredVolumeTravedDist (<ExploredVolumeTravedDist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExploredVolumeTravedDist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExploredVolumeTravedDist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization_tools-msg:<ExploredVolumeTravedDist> is deprecated: use visualization_tools-msg:ExploredVolumeTravedDist instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExploredVolumeTravedDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:header-val is deprecated.  Use visualization_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'exploredVolume-val :lambda-list '(m))
(cl:defmethod exploredVolume-val ((m <ExploredVolumeTravedDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:exploredVolume-val is deprecated.  Use visualization_tools-msg:exploredVolume instead.")
  (exploredVolume m))

(cl:ensure-generic-function 'travedDist-val :lambda-list '(m))
(cl:defmethod travedDist-val ((m <ExploredVolumeTravedDist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:travedDist-val is deprecated.  Use visualization_tools-msg:travedDist instead.")
  (travedDist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExploredVolumeTravedDist>) ostream)
  "Serializes a message object of type '<ExploredVolumeTravedDist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'exploredVolume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'travedDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExploredVolumeTravedDist>) istream)
  "Deserializes a message object of type '<ExploredVolumeTravedDist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exploredVolume) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'travedDist) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExploredVolumeTravedDist>)))
  "Returns string type for a message object of type '<ExploredVolumeTravedDist>"
  "visualization_tools/ExploredVolumeTravedDist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExploredVolumeTravedDist)))
  "Returns string type for a message object of type 'ExploredVolumeTravedDist"
  "visualization_tools/ExploredVolumeTravedDist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExploredVolumeTravedDist>)))
  "Returns md5sum for a message object of type '<ExploredVolumeTravedDist>"
  "e0c06bd8d6539e3eda299d9dcba041e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExploredVolumeTravedDist)))
  "Returns md5sum for a message object of type 'ExploredVolumeTravedDist"
  "e0c06bd8d6539e3eda299d9dcba041e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExploredVolumeTravedDist>)))
  "Returns full string definition for message of type '<ExploredVolumeTravedDist>"
  (cl:format cl:nil "~%Header header~%float64 exploredVolume~%float64 travedDist~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExploredVolumeTravedDist)))
  "Returns full string definition for message of type 'ExploredVolumeTravedDist"
  (cl:format cl:nil "~%Header header~%float64 exploredVolume~%float64 travedDist~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExploredVolumeTravedDist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExploredVolumeTravedDist>))
  "Converts a ROS message object to a list"
  (cl:list 'ExploredVolumeTravedDist
    (cl:cons ':header (header msg))
    (cl:cons ':exploredVolume (exploredVolume msg))
    (cl:cons ':travedDist (travedDist msg))
))
