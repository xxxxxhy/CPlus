; Auto-generated. Do not edit!


(cl:in-package visualization_tools-msg)


;//! \htmlinclude ViewpointGain.msg.html

(cl:defclass <ViewpointGain> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (viewpoints_ids
    :reader viewpoints_ids
    :initarg :viewpoints_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (frontiers_gains
    :reader frontiers_gains
    :initarg :frontiers_gains
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (unmapped_gains
    :reader unmapped_gains
    :initarg :unmapped_gains
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ViewpointGain (<ViewpointGain>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ViewpointGain>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ViewpointGain)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visualization_tools-msg:<ViewpointGain> is deprecated: use visualization_tools-msg:ViewpointGain instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ViewpointGain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:header-val is deprecated.  Use visualization_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'viewpoints_ids-val :lambda-list '(m))
(cl:defmethod viewpoints_ids-val ((m <ViewpointGain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:viewpoints_ids-val is deprecated.  Use visualization_tools-msg:viewpoints_ids instead.")
  (viewpoints_ids m))

(cl:ensure-generic-function 'frontiers_gains-val :lambda-list '(m))
(cl:defmethod frontiers_gains-val ((m <ViewpointGain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:frontiers_gains-val is deprecated.  Use visualization_tools-msg:frontiers_gains instead.")
  (frontiers_gains m))

(cl:ensure-generic-function 'unmapped_gains-val :lambda-list '(m))
(cl:defmethod unmapped_gains-val ((m <ViewpointGain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visualization_tools-msg:unmapped_gains-val is deprecated.  Use visualization_tools-msg:unmapped_gains instead.")
  (unmapped_gains m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ViewpointGain>) ostream)
  "Serializes a message object of type '<ViewpointGain>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'viewpoints_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'viewpoints_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontiers_gains))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'frontiers_gains))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unmapped_gains))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'unmapped_gains))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ViewpointGain>) istream)
  "Deserializes a message object of type '<ViewpointGain>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'viewpoints_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'viewpoints_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontiers_gains) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontiers_gains)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unmapped_gains) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unmapped_gains)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ViewpointGain>)))
  "Returns string type for a message object of type '<ViewpointGain>"
  "visualization_tools/ViewpointGain")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ViewpointGain)))
  "Returns string type for a message object of type 'ViewpointGain"
  "visualization_tools/ViewpointGain")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ViewpointGain>)))
  "Returns md5sum for a message object of type '<ViewpointGain>"
  "0a86d71165359171b73a9d35ab987e6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ViewpointGain)))
  "Returns md5sum for a message object of type 'ViewpointGain"
  "0a86d71165359171b73a9d35ab987e6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ViewpointGain>)))
  "Returns full string definition for message of type '<ViewpointGain>"
  (cl:format cl:nil "Header header~%int32[] viewpoints_ids~%float64[] frontiers_gains~%float64[] unmapped_gains~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ViewpointGain)))
  "Returns full string definition for message of type 'ViewpointGain"
  (cl:format cl:nil "Header header~%int32[] viewpoints_ids~%float64[] frontiers_gains~%float64[] unmapped_gains~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ViewpointGain>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'viewpoints_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontiers_gains) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unmapped_gains) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ViewpointGain>))
  "Converts a ROS message object to a list"
  (cl:list 'ViewpointGain
    (cl:cons ':header (header msg))
    (cl:cons ':viewpoints_ids (viewpoints_ids msg))
    (cl:cons ':frontiers_gains (frontiers_gains msg))
    (cl:cons ':unmapped_gains (unmapped_gains msg))
))
