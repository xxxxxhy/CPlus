; Auto-generated. Do not edit!


(cl:in-package traversability_analysis-msg)


;//! \htmlinclude TerrainGrid.msg.html

(cl:defclass <TerrainGrid> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (min_z
    :reader min_z
    :initarg :min_z
    :type cl:float
    :initform 0.0)
   (bottom_point
    :reader bottom_point
    :initarg :bottom_point
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (points
    :reader points
    :initarg :points
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass TerrainGrid (<TerrainGrid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TerrainGrid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TerrainGrid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traversability_analysis-msg:<TerrainGrid> is deprecated: use traversability_analysis-msg:TerrainGrid instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TerrainGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversability_analysis-msg:status-val is deprecated.  Use traversability_analysis-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'min_z-val :lambda-list '(m))
(cl:defmethod min_z-val ((m <TerrainGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversability_analysis-msg:min_z-val is deprecated.  Use traversability_analysis-msg:min_z instead.")
  (min_z m))

(cl:ensure-generic-function 'bottom_point-val :lambda-list '(m))
(cl:defmethod bottom_point-val ((m <TerrainGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversability_analysis-msg:bottom_point-val is deprecated.  Use traversability_analysis-msg:bottom_point instead.")
  (bottom_point m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <TerrainGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traversability_analysis-msg:points-val is deprecated.  Use traversability_analysis-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TerrainGrid>) ostream)
  "Serializes a message object of type '<TerrainGrid>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bottom_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TerrainGrid>) istream)
  "Deserializes a message object of type '<TerrainGrid>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_z) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bottom_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TerrainGrid>)))
  "Returns string type for a message object of type '<TerrainGrid>"
  "traversability_analysis/TerrainGrid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TerrainGrid)))
  "Returns string type for a message object of type 'TerrainGrid"
  "traversability_analysis/TerrainGrid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TerrainGrid>)))
  "Returns md5sum for a message object of type '<TerrainGrid>"
  "e44473ba5f931adc745fc62d9a24efab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TerrainGrid)))
  "Returns md5sum for a message object of type 'TerrainGrid"
  "e44473ba5f931adc745fc62d9a24efab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TerrainGrid>)))
  "Returns full string definition for message of type '<TerrainGrid>"
  (cl:format cl:nil "uint8 status~%~%#坐标系都是输入的点云的坐标系，也就是相对于“map”系的坐标~%float32 min_z~%geometry_msgs/Point32 bottom_point~%sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TerrainGrid)))
  "Returns full string definition for message of type 'TerrainGrid"
  (cl:format cl:nil "uint8 status~%~%#坐标系都是输入的点云的坐标系，也就是相对于“map”系的坐标~%float32 min_z~%geometry_msgs/Point32 bottom_point~%sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TerrainGrid>))
  (cl:+ 0
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bottom_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TerrainGrid>))
  "Converts a ROS message object to a list"
  (cl:list 'TerrainGrid
    (cl:cons ':status (status msg))
    (cl:cons ':min_z (min_z msg))
    (cl:cons ':bottom_point (bottom_point msg))
    (cl:cons ':points (points msg))
))
