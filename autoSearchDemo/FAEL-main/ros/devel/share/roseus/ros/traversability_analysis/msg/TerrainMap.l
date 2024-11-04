;; Auto-generated. Do not edit!


(when (boundp 'traversability_analysis::TerrainMap)
  (if (not (find-package "TRAVERSABILITY_ANALYSIS"))
    (make-package "TRAVERSABILITY_ANALYSIS"))
  (shadow 'TerrainMap (find-package "TRAVERSABILITY_ANALYSIS")))
(unless (find-package "TRAVERSABILITY_ANALYSIS::TERRAINMAP")
  (make-package "TRAVERSABILITY_ANALYSIS::TERRAINMAP"))

(in-package "ROS")
;;//! \htmlinclude TerrainMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass traversability_analysis::TerrainMap
  :super ros::object
  :slots (_header _min_x _min_y _z_value _grid_size _grid_width_num _grids ))

(defmethod traversability_analysis::TerrainMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:min_x __min_x) 0.0)
    ((:min_y __min_y) 0.0)
    ((:z_value __z_value) 0.0)
    ((:grid_size __grid_size) 0.0)
    ((:grid_width_num __grid_width_num) 0)
    ((:grids __grids) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _min_x (float __min_x))
   (setq _min_y (float __min_y))
   (setq _z_value (float __z_value))
   (setq _grid_size (float __grid_size))
   (setq _grid_width_num (round __grid_width_num))
   (setq _grids __grids)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:min_x
   (&optional __min_x)
   (if __min_x (setq _min_x __min_x)) _min_x)
  (:min_y
   (&optional __min_y)
   (if __min_y (setq _min_y __min_y)) _min_y)
  (:z_value
   (&optional __z_value)
   (if __z_value (setq _z_value __z_value)) _z_value)
  (:grid_size
   (&optional __grid_size)
   (if __grid_size (setq _grid_size __grid_size)) _grid_size)
  (:grid_width_num
   (&optional __grid_width_num)
   (if __grid_width_num (setq _grid_width_num __grid_width_num)) _grid_width_num)
  (:grids
   (&rest __grids)
   (if (keywordp (car __grids))
       (send* _grids __grids)
     (progn
       (if __grids (setq _grids (car __grids)))
       _grids)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _min_x
    8
    ;; float64 _min_y
    8
    ;; float64 _z_value
    8
    ;; float64 _grid_size
    8
    ;; uint32 _grid_width_num
    4
    ;; traversability_analysis/TerrainGrid[] _grids
    (apply #'+ (send-all _grids :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _min_x
       (sys::poke _min_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_y
       (sys::poke _min_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_value
       (sys::poke _z_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _grid_size
       (sys::poke _grid_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _grid_width_num
       (write-long _grid_width_num s)
     ;; traversability_analysis/TerrainGrid[] _grids
     (write-long (length _grids) s)
     (dolist (elem _grids)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _min_x
     (setq _min_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_y
     (setq _min_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_value
     (setq _z_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _grid_size
     (setq _grid_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _grid_width_num
     (setq _grid_width_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; traversability_analysis/TerrainGrid[] _grids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grids (let (r) (dotimes (i n) (push (instance traversability_analysis::TerrainGrid :init) r)) r))
     (dolist (elem- _grids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get traversability_analysis::TerrainMap :md5sum-) "ab03f5fc2ebd4e308020515a4dcc93f2")
(setf (get traversability_analysis::TerrainMap :datatype-) "traversability_analysis/TerrainMap")
(setf (get traversability_analysis::TerrainMap :definition-)
      "std_msgs/Header header
float64 min_x
float64 min_y
float64 z_value
float64 grid_size
uint32 grid_width_num
TerrainGrid[] grids
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: traversability_analysis/TerrainGrid
uint8 status

#坐标系都是输入的点云的坐标系，也就是相对于“map”系的坐标
float32 min_z
geometry_msgs/Point32 bottom_point
sensor_msgs/PointCloud2 points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :traversability_analysis/TerrainMap "ab03f5fc2ebd4e308020515a4dcc93f2")


