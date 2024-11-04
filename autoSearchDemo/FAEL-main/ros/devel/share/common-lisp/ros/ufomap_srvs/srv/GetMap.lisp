; Auto-generated. Do not edit!


(cl:in-package ufomap_srvs-srv)


;//! \htmlinclude GetMap-request.msg.html

(cl:defclass <GetMap-request> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type cl:fixnum
    :initform 0)
   (compress
    :reader compress
    :initarg :compress
    :type cl:boolean
    :initform cl:nil)
   (bounding_volume
    :reader bounding_volume
    :initarg :bounding_volume
    :type ufomap_msgs-msg:BoundingVolume
    :initform (cl:make-instance 'ufomap_msgs-msg:BoundingVolume)))
)

(cl:defclass GetMap-request (<GetMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_srvs-srv:<GetMap-request> is deprecated: use ufomap_srvs-srv:GetMap-request instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <GetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:depth-val is deprecated.  Use ufomap_srvs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'compress-val :lambda-list '(m))
(cl:defmethod compress-val ((m <GetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:compress-val is deprecated.  Use ufomap_srvs-srv:compress instead.")
  (compress m))

(cl:ensure-generic-function 'bounding_volume-val :lambda-list '(m))
(cl:defmethod bounding_volume-val ((m <GetMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:bounding_volume-val is deprecated.  Use ufomap_srvs-srv:bounding_volume instead.")
  (bounding_volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap-request>) ostream)
  "Serializes a message object of type '<GetMap-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'compress) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_volume) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap-request>) istream)
  "Deserializes a message object of type '<GetMap-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compress) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_volume) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap-request>)))
  "Returns string type for a service object of type '<GetMap-request>"
  "ufomap_srvs/GetMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap-request)))
  "Returns string type for a service object of type 'GetMap-request"
  "ufomap_srvs/GetMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap-request>)))
  "Returns md5sum for a message object of type '<GetMap-request>"
  "47cd0cd4e998ca314e6ccaf9f3b259df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap-request)))
  "Returns md5sum for a message object of type 'GetMap-request"
  "47cd0cd4e998ca314e6ccaf9f3b259df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap-request>)))
  "Returns full string definition for message of type '<GetMap-request>"
  (cl:format cl:nil "# Get the complete map at a specified depth~%~%# The depth of the map to return~%uint8 depth~%# If the message should be compressed~%bool compress~%# Bounding volume of which part of the map should be returned~%ufomap_msgs/BoundingVolume bounding_volume~%~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap-request)))
  "Returns full string definition for message of type 'GetMap-request"
  (cl:format cl:nil "# Get the complete map at a specified depth~%~%# The depth of the map to return~%uint8 depth~%# If the message should be compressed~%bool compress~%# Bounding volume of which part of the map should be returned~%ufomap_msgs/BoundingVolume bounding_volume~%~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap-request>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_volume))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap-request
    (cl:cons ':depth (depth msg))
    (cl:cons ':compress (compress msg))
    (cl:cons ':bounding_volume (bounding_volume msg))
))
;//! \htmlinclude GetMap-response.msg.html

(cl:defclass <GetMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (map
    :reader map
    :initarg :map
    :type ufomap_msgs-msg:UFOMap
    :initform (cl:make-instance 'ufomap_msgs-msg:UFOMap)))
)

(cl:defclass GetMap-response (<GetMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_srvs-srv:<GetMap-response> is deprecated: use ufomap_srvs-srv:GetMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:success-val is deprecated.  Use ufomap_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:map-val is deprecated.  Use ufomap_srvs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap-response>) ostream)
  "Serializes a message object of type '<GetMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap-response>) istream)
  "Deserializes a message object of type '<GetMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap-response>)))
  "Returns string type for a service object of type '<GetMap-response>"
  "ufomap_srvs/GetMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap-response)))
  "Returns string type for a service object of type 'GetMap-response"
  "ufomap_srvs/GetMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap-response>)))
  "Returns md5sum for a message object of type '<GetMap-response>"
  "47cd0cd4e998ca314e6ccaf9f3b259df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap-response)))
  "Returns md5sum for a message object of type 'GetMap-response"
  "47cd0cd4e998ca314e6ccaf9f3b259df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap-response>)))
  "Returns full string definition for message of type '<GetMap-response>"
  (cl:format cl:nil "# If it was successful~%bool success~%# The map to be returned~%ufomap_msgs/UFOMap map~%~%~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap-response)))
  "Returns full string definition for message of type 'GetMap-response"
  (cl:format cl:nil "# If it was successful~%bool success~%# The map to be returned~%ufomap_msgs/UFOMap map~%~%~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMap)))
  'GetMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMap)))
  'GetMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap)))
  "Returns string type for a service object of type '<GetMap>"
  "ufomap_srvs/GetMap")