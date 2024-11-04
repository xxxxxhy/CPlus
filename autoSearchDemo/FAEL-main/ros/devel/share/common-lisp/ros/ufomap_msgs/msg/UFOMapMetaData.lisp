; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude UFOMapMetaData.msg.html

(cl:defclass <UFOMapMetaData> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (depth_levels
    :reader depth_levels
    :initarg :depth_levels
    :type cl:fixnum
    :initform 0)
   (compressed
    :reader compressed
    :initarg :compressed
    :type cl:boolean
    :initform cl:nil)
   (uncompressed_data_size
    :reader uncompressed_data_size
    :initarg :uncompressed_data_size
    :type cl:integer
    :initform 0)
   (bounding_volume
    :reader bounding_volume
    :initarg :bounding_volume
    :type ufomap_msgs-msg:BoundingVolume
    :initform (cl:make-instance 'ufomap_msgs-msg:BoundingVolume)))
)

(cl:defclass UFOMapMetaData (<UFOMapMetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UFOMapMetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UFOMapMetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<UFOMapMetaData> is deprecated: use ufomap_msgs-msg:UFOMapMetaData instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:version-val is deprecated.  Use ufomap_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:id-val is deprecated.  Use ufomap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:resolution-val is deprecated.  Use ufomap_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'depth_levels-val :lambda-list '(m))
(cl:defmethod depth_levels-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:depth_levels-val is deprecated.  Use ufomap_msgs-msg:depth_levels instead.")
  (depth_levels m))

(cl:ensure-generic-function 'compressed-val :lambda-list '(m))
(cl:defmethod compressed-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:compressed-val is deprecated.  Use ufomap_msgs-msg:compressed instead.")
  (compressed m))

(cl:ensure-generic-function 'uncompressed_data_size-val :lambda-list '(m))
(cl:defmethod uncompressed_data_size-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:uncompressed_data_size-val is deprecated.  Use ufomap_msgs-msg:uncompressed_data_size instead.")
  (uncompressed_data_size m))

(cl:ensure-generic-function 'bounding_volume-val :lambda-list '(m))
(cl:defmethod bounding_volume-val ((m <UFOMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:bounding_volume-val is deprecated.  Use ufomap_msgs-msg:bounding_volume instead.")
  (bounding_volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UFOMapMetaData>) ostream)
  "Serializes a message object of type '<UFOMapMetaData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth_levels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'compressed) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'uncompressed_data_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_volume) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UFOMapMetaData>) istream)
  "Deserializes a message object of type '<UFOMapMetaData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth_levels)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uncompressed_data_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_volume) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UFOMapMetaData>)))
  "Returns string type for a message object of type '<UFOMapMetaData>"
  "ufomap_msgs/UFOMapMetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UFOMapMetaData)))
  "Returns string type for a message object of type 'UFOMapMetaData"
  "ufomap_msgs/UFOMapMetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UFOMapMetaData>)))
  "Returns md5sum for a message object of type '<UFOMapMetaData>"
  "3469fb65109a0fe2f8055afe98d145fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UFOMapMetaData)))
  "Returns md5sum for a message object of type 'UFOMapMetaData"
  "3469fb65109a0fe2f8055afe98d145fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UFOMapMetaData>)))
  "Returns full string definition for message of type '<UFOMapMetaData>"
  (cl:format cl:nil "# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UFOMapMetaData)))
  "Returns full string definition for message of type 'UFOMapMetaData"
  (cl:format cl:nil "# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UFOMapMetaData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'id))
     8
     1
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_volume))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UFOMapMetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'UFOMapMetaData
    (cl:cons ':version (version msg))
    (cl:cons ':id (id msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':depth_levels (depth_levels msg))
    (cl:cons ':compressed (compressed msg))
    (cl:cons ':uncompressed_data_size (uncompressed_data_size msg))
    (cl:cons ':bounding_volume (bounding_volume msg))
))
