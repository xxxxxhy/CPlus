; Auto-generated. Do not edit!


(cl:in-package visualization_tools-msg)


;//! \htmlinclude TravedDistTime.msg.html

(cl:defclass <TravedDistTime> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (travedDist
    :reader travedDist
    :initarg :travedDist
    :type cl:float
    :initform 0.0)
   (timeConsumed
    :reader timeConsumed
    :initarg :timeConsumed
    :type cl:float
    :initform 0.0))
)

(cl:defclass TravedDistTime (<TravedDistTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TravedDistTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TravedDistTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization_tools-msg:<TravedDistTime> is deprecated: use visualization_tools-msg:TravedDistTime instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TravedDistTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:header-val is deprecated.  Use visualization_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'travedDist-val :lambda-list '(m))
(cl:defmethod travedDist-val ((m <TravedDistTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:travedDist-val is deprecated.  Use visualization_tools-msg:travedDist instead.")
  (travedDist m))

(cl:ensure-generic-function 'timeConsumed-val :lambda-list '(m))
(cl:defmethod timeConsumed-val ((m <TravedDistTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:timeConsumed-val is deprecated.  Use visualization_tools-msg:timeConsumed instead.")
  (timeConsumed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TravedDistTime>) ostream)
  "Serializes a message object of type '<TravedDistTime>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'travedDist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeConsumed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TravedDistTime>) istream)
  "Deserializes a message object of type '<TravedDistTime>"
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
    (cl:setf (cl:slot-value msg 'travedDist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeConsumed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TravedDistTime>)))
  "Returns string type for a message object of type '<TravedDistTime>"
  "visualization_tools/TravedDistTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TravedDistTime)))
  "Returns string type for a message object of type 'TravedDistTime"
  "visualization_tools/TravedDistTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TravedDistTime>)))
  "Returns md5sum for a message object of type '<TravedDistTime>"
  "de1f80a1c80af0b23ddd31796ccb9ea0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TravedDistTime)))
  "Returns md5sum for a message object of type 'TravedDistTime"
  "de1f80a1c80af0b23ddd31796ccb9ea0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TravedDistTime>)))
  "Returns full string definition for message of type '<TravedDistTime>"
  (cl:format cl:nil "~%Header header~%float64 travedDist~%float64 timeConsumed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TravedDistTime)))
  "Returns full string definition for message of type 'TravedDistTime"
  (cl:format cl:nil "~%Header header~%float64 travedDist~%float64 timeConsumed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TravedDistTime>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TravedDistTime>))
  "Converts a ROS message object to a list"
  (cl:list 'TravedDistTime
    (cl:cons ':header (header msg))
    (cl:cons ':travedDist (travedDist msg))
    (cl:cons ':timeConsumed (timeConsumed msg))
))
