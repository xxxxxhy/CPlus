; Auto-generated. Do not edit!


(cl:in-package ufomap_srvs-srv)


;//! \htmlinclude Reset-request.msg.html

(cl:defclass <Reset-request> (roslisp-msg-protocol:ros-message)
  ((new_resolution
    :reader new_resolution
    :initarg :new_resolution
    :type cl:float
    :initform 0.0)
   (new_depth_levels
    :reader new_depth_levels
    :initarg :new_depth_levels
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Reset-request (<Reset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_srvs-srv:<Reset-request> is deprecated: use ufomap_srvs-srv:Reset-request instead.")))

(cl:ensure-generic-function 'new_resolution-val :lambda-list '(m))
(cl:defmethod new_resolution-val ((m <Reset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:new_resolution-val is deprecated.  Use ufomap_srvs-srv:new_resolution instead.")
  (new_resolution m))

(cl:ensure-generic-function 'new_depth_levels-val :lambda-list '(m))
(cl:defmethod new_depth_levels-val ((m <Reset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:new_depth_levels-val is deprecated.  Use ufomap_srvs-srv:new_depth_levels instead.")
  (new_depth_levels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reset-request>) ostream)
  "Serializes a message object of type '<Reset-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'new_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'new_depth_levels)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reset-request>) istream)
  "Deserializes a message object of type '<Reset-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'new_resolution) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'new_depth_levels)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reset-request>)))
  "Returns string type for a service object of type '<Reset-request>"
  "ufomap_srvs/ResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reset-request)))
  "Returns string type for a service object of type 'Reset-request"
  "ufomap_srvs/ResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reset-request>)))
  "Returns md5sum for a message object of type '<Reset-request>"
  "98aeec308656a857be8d59d1fb3f81a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reset-request)))
  "Returns md5sum for a message object of type 'Reset-request"
  "98aeec308656a857be8d59d1fb3f81a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reset-request>)))
  "Returns full string definition for message of type '<Reset-request>"
  (cl:format cl:nil "# Resets the complete map.~%~%# The resolution of the new map~%float64 new_resolution~%# The number of depth levels in the new map~%uint8 new_depth_levels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reset-request)))
  "Returns full string definition for message of type 'Reset-request"
  (cl:format cl:nil "# Resets the complete map.~%~%# The resolution of the new map~%float64 new_resolution~%# The number of depth levels in the new map~%uint8 new_depth_levels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reset-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reset-request
    (cl:cons ':new_resolution (new_resolution msg))
    (cl:cons ':new_depth_levels (new_depth_levels msg))
))
;//! \htmlinclude Reset-response.msg.html

(cl:defclass <Reset-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Reset-response (<Reset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_srvs-srv:<Reset-response> is deprecated: use ufomap_srvs-srv:Reset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Reset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:success-val is deprecated.  Use ufomap_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reset-response>) ostream)
  "Serializes a message object of type '<Reset-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reset-response>) istream)
  "Deserializes a message object of type '<Reset-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reset-response>)))
  "Returns string type for a service object of type '<Reset-response>"
  "ufomap_srvs/ResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reset-response)))
  "Returns string type for a service object of type 'Reset-response"
  "ufomap_srvs/ResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reset-response>)))
  "Returns md5sum for a message object of type '<Reset-response>"
  "98aeec308656a857be8d59d1fb3f81a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reset-response)))
  "Returns md5sum for a message object of type 'Reset-response"
  "98aeec308656a857be8d59d1fb3f81a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reset-response>)))
  "Returns full string definition for message of type '<Reset-response>"
  (cl:format cl:nil "# If it was successful~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reset-response)))
  "Returns full string definition for message of type 'Reset-response"
  (cl:format cl:nil "# If it was successful~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reset-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reset-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reset)))
  'Reset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reset)))
  'Reset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reset)))
  "Returns string type for a service object of type '<Reset>"
  "ufomap_srvs/Reset")