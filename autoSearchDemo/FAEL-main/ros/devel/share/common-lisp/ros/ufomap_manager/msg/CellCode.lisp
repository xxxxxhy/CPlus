; Auto-generated. Do not edit!


(cl:in-package ufomap_manager-msg)


;//! \htmlinclude CellCode.msg.html

(cl:defclass <CellCode> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type cl:integer
    :initform 0)
   (Code
    :reader Code
    :initarg :Code
    :type cl:integer
    :initform 0))
)

(cl:defclass CellCode (<CellCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CellCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CellCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_manager-msg:<CellCode> is deprecated: use ufomap_manager-msg:CellCode instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <CellCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:depth-val is deprecated.  Use ufomap_manager-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'Code-val :lambda-list '(m))
(cl:defmethod Code-val ((m <CellCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:Code-val is deprecated.  Use ufomap_manager-msg:Code instead.")
  (Code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CellCode>) ostream)
  "Serializes a message object of type '<CellCode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'depth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'depth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'depth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CellCode>) istream)
  "Deserializes a message object of type '<CellCode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'depth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'depth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'depth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CellCode>)))
  "Returns string type for a message object of type '<CellCode>"
  "ufomap_manager/CellCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CellCode)))
  "Returns string type for a message object of type 'CellCode"
  "ufomap_manager/CellCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CellCode>)))
  "Returns md5sum for a message object of type '<CellCode>"
  "b94fd8468f8b44ebfb1a755ca2d3ecbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CellCode)))
  "Returns md5sum for a message object of type 'CellCode"
  "b94fd8468f8b44ebfb1a755ca2d3ecbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CellCode>)))
  "Returns full string definition for message of type '<CellCode>"
  (cl:format cl:nil "uint32 depth~%uint64 Code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CellCode)))
  "Returns full string definition for message of type 'CellCode"
  (cl:format cl:nil "uint32 depth~%uint64 Code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CellCode>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CellCode>))
  "Converts a ROS message object to a list"
  (cl:list 'CellCode
    (cl:cons ':depth (depth msg))
    (cl:cons ':Code (Code msg))
))
