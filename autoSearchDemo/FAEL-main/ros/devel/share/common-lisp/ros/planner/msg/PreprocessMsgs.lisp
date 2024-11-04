; Auto-generated. Do not edit!


(cl:in-package planner-msg)


;//! \htmlinclude PreprocessMsgs.msg.html

(cl:defclass <PreprocessMsgs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ufomap_with_frontiers
    :reader ufomap_with_frontiers
    :initarg :ufomap_with_frontiers
    :type ufomap_manager-msg:UfomapWithFrontiers
    :initform (cl:make-instance 'ufomap_manager-msg:UfomapWithFrontiers))
   (viewpoint_frontiers_set
    :reader viewpoint_frontiers_set
    :initarg :viewpoint_frontiers_set
    :type (cl:vector planner-msg:ViewpointsWithFrontiers)
   :initform (cl:make-array 0 :element-type 'planner-msg:ViewpointsWithFrontiers :initial-element (cl:make-instance 'planner-msg:ViewpointsWithFrontiers)))
   (road_map_msg
    :reader road_map_msg
    :initarg :road_map_msg
    :type planner-msg:RoadMapMsg
    :initform (cl:make-instance 'planner-msg:RoadMapMsg)))
)

(cl:defclass PreprocessMsgs (<PreprocessMsgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PreprocessMsgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PreprocessMsgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner-msg:<PreprocessMsgs> is deprecated: use planner-msg:PreprocessMsgs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PreprocessMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:header-val is deprecated.  Use planner-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ufomap_with_frontiers-val :lambda-list '(m))
(cl:defmethod ufomap_with_frontiers-val ((m <PreprocessMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:ufomap_with_frontiers-val is deprecated.  Use planner-msg:ufomap_with_frontiers instead.")
  (ufomap_with_frontiers m))

(cl:ensure-generic-function 'viewpoint_frontiers_set-val :lambda-list '(m))
(cl:defmethod viewpoint_frontiers_set-val ((m <PreprocessMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:viewpoint_frontiers_set-val is deprecated.  Use planner-msg:viewpoint_frontiers_set instead.")
  (viewpoint_frontiers_set m))

(cl:ensure-generic-function 'road_map_msg-val :lambda-list '(m))
(cl:defmethod road_map_msg-val ((m <PreprocessMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner-msg:road_map_msg-val is deprecated.  Use planner-msg:road_map_msg instead.")
  (road_map_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PreprocessMsgs>) ostream)
  "Serializes a message object of type '<PreprocessMsgs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ufomap_with_frontiers) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'viewpoint_frontiers_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'viewpoint_frontiers_set))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_map_msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PreprocessMsgs>) istream)
  "Deserializes a message object of type '<PreprocessMsgs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ufomap_with_frontiers) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'viewpoint_frontiers_set) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'viewpoint_frontiers_set)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planner-msg:ViewpointsWithFrontiers))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_map_msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PreprocessMsgs>)))
  "Returns string type for a message object of type '<PreprocessMsgs>"
  "planner/PreprocessMsgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PreprocessMsgs)))
  "Returns string type for a message object of type 'PreprocessMsgs"
  "planner/PreprocessMsgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PreprocessMsgs>)))
  "Returns md5sum for a message object of type '<PreprocessMsgs>"
  "73bcf5cb2848fb40ea7e49ae1282eac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PreprocessMsgs)))
  "Returns md5sum for a message object of type 'PreprocessMsgs"
  "73bcf5cb2848fb40ea7e49ae1282eac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PreprocessMsgs>)))
  "Returns full string definition for message of type '<PreprocessMsgs>"
  (cl:format cl:nil "~%Header header~%~%ufomap_manager/UfomapWithFrontiers ufomap_with_frontiers~%~%ViewpointsWithFrontiers[] viewpoint_frontiers_set~%~%RoadMapMsg road_map_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ufomap_manager/UfomapWithFrontiers~%Header header~%~%ufomap_msgs/UFOMap  ufomap~%~%#geometry_msgs/Point[] local_frontiers_center~%#geometry_msgs/Point[] global_frontiers_center~%#~%#int32 frontiers_depth~%~%ufomap_manager/CellCode[] local_frontiers~%ufomap_manager/CellCode[] global_frontiers~%ufomap_manager/CellCode[] changed_cell_codes~%ufomap_manager/CellCode[] known_cell_codes~%~%# 构建ufomap时机器人的参数配置~%string frame_id~%string robot_base_frame_id~%float64 robot_height~%float64 robot_bottom~%float64 robot_radius~%float64 max_range~%~%uint32 known_plane_cell_num~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%================================================================================~%MSG: ufomap_manager/CellCode~%uint32 depth~%uint64 Code~%~%================================================================================~%MSG: planner/ViewpointsWithFrontiers~%~%geometry_msgs/Point view_point~%ufomap_manager/CellCode[] frontiers~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planner/RoadMapMsg~%~%IdPointPair[] id_point_pair_list~%EdgePair[] edge_pair_list~%================================================================================~%MSG: planner/IdPointPair~%int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: planner/EdgePair~%~%int32 edge_id~%IdPointPair begin_point~%IdPointPair end_point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PreprocessMsgs)))
  "Returns full string definition for message of type 'PreprocessMsgs"
  (cl:format cl:nil "~%Header header~%~%ufomap_manager/UfomapWithFrontiers ufomap_with_frontiers~%~%ViewpointsWithFrontiers[] viewpoint_frontiers_set~%~%RoadMapMsg road_map_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ufomap_manager/UfomapWithFrontiers~%Header header~%~%ufomap_msgs/UFOMap  ufomap~%~%#geometry_msgs/Point[] local_frontiers_center~%#geometry_msgs/Point[] global_frontiers_center~%#~%#int32 frontiers_depth~%~%ufomap_manager/CellCode[] local_frontiers~%ufomap_manager/CellCode[] global_frontiers~%ufomap_manager/CellCode[] changed_cell_codes~%ufomap_manager/CellCode[] known_cell_codes~%~%# 构建ufomap时机器人的参数配置~%string frame_id~%string robot_base_frame_id~%float64 robot_height~%float64 robot_bottom~%float64 robot_radius~%float64 max_range~%~%uint32 known_plane_cell_num~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%================================================================================~%MSG: ufomap_manager/CellCode~%uint32 depth~%uint64 Code~%~%================================================================================~%MSG: planner/ViewpointsWithFrontiers~%~%geometry_msgs/Point view_point~%ufomap_manager/CellCode[] frontiers~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planner/RoadMapMsg~%~%IdPointPair[] id_point_pair_list~%EdgePair[] edge_pair_list~%================================================================================~%MSG: planner/IdPointPair~%int32 id~%geometry_msgs/Point point~%================================================================================~%MSG: planner/EdgePair~%~%int32 edge_id~%IdPointPair begin_point~%IdPointPair end_point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PreprocessMsgs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ufomap_with_frontiers))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'viewpoint_frontiers_set) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_map_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PreprocessMsgs>))
  "Converts a ROS message object to a list"
  (cl:list 'PreprocessMsgs
    (cl:cons ':header (header msg))
    (cl:cons ':ufomap_with_frontiers (ufomap_with_frontiers msg))
    (cl:cons ':viewpoint_frontiers_set (viewpoint_frontiers_set msg))
    (cl:cons ':road_map_msg (road_map_msg msg))
))
