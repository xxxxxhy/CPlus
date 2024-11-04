; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude UFOMap.msg.html

(cl:defclass <UFOMap> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type ufomap_msgs-msg:UFOMapMetaData
    :initform (cl:make-instance 'ufomap_msgs-msg:UFOMapMetaData))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UFOMap (<UFOMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UFOMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UFOMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<UFOMap> is deprecated: use ufomap_msgs-msg:UFOMap instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <UFOMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:info-val is deprecated.  Use ufomap_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UFOMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:data-val is deprecated.  Use ufomap_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UFOMap>) ostream)
  "Serializes a message object of type '<UFOMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UFOMap>) istream)
  "Deserializes a message object of type '<UFOMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UFOMap>)))
  "Returns string type for a message object of type '<UFOMap>"
  "ufomap_msgs/UFOMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UFOMap)))
  "Returns string type for a message object of type 'UFOMap"
  "ufomap_msgs/UFOMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UFOMap>)))
  "Returns md5sum for a message object of type '<UFOMap>"
  "6853af3d2dbb0ca48ce44c3720af1cca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UFOMap)))
  "Returns md5sum for a message object of type 'UFOMap"
  "6853af3d2dbb0ca48ce44c3720af1cca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UFOMap>)))
  "Returns full string definition for message of type '<UFOMap>"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UFOMap)))
  "Returns full string definition for message of type 'UFOMap"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UFOMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UFOMap>))
  "Converts a ROS message object to a list"
  (cl:list 'UFOMap
    (cl:cons ':info (info msg))
    (cl:cons ':data (data msg))
))
