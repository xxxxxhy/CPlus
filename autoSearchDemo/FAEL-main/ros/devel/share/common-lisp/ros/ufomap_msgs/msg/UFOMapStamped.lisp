; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude UFOMapStamped.msg.html

(cl:defclass <UFOMapStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (map
    :reader map
    :initarg :map
    :type ufomap_msgs-msg:UFOMap
    :initform (cl:make-instance 'ufomap_msgs-msg:UFOMap)))
)

(cl:defclass UFOMapStamped (<UFOMapStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UFOMapStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UFOMapStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<UFOMapStamped> is deprecated: use ufomap_msgs-msg:UFOMapStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UFOMapStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:header-val is deprecated.  Use ufomap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <UFOMapStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:map-val is deprecated.  Use ufomap_msgs-msg:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UFOMapStamped>) ostream)
  "Serializes a message object of type '<UFOMapStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UFOMapStamped>) istream)
  "Deserializes a message object of type '<UFOMapStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UFOMapStamped>)))
  "Returns string type for a message object of type '<UFOMapStamped>"
  "ufomap_msgs/UFOMapStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UFOMapStamped)))
  "Returns string type for a message object of type 'UFOMapStamped"
  "ufomap_msgs/UFOMapStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UFOMapStamped>)))
  "Returns md5sum for a message object of type '<UFOMapStamped>"
  "4e6ca7ef43516fb3a0c22c889b3897eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UFOMapStamped)))
  "Returns md5sum for a message object of type 'UFOMapStamped"
  "4e6ca7ef43516fb3a0c22c889b3897eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UFOMapStamped>)))
  "Returns full string definition for message of type '<UFOMapStamped>"
  (cl:format cl:nil "Header header~%~%ufomap_msgs/UFOMap map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UFOMapStamped)))
  "Returns full string definition for message of type 'UFOMapStamped"
  (cl:format cl:nil "Header header~%~%ufomap_msgs/UFOMap map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UFOMapStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UFOMapStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'UFOMapStamped
    (cl:cons ':header (header msg))
    (cl:cons ':map (map msg))
))
