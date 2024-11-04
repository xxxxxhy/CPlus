;; Auto-generated. Do not edit!


(when (boundp 'traversability_analysis::TerrainGrid)
  (if (not (find-package "TRAVERSABILITY_ANALYSIS"))
    (make-package "TRAVERSABILITY_ANALYSIS"))
  (shadow 'TerrainGrid (find-package "TRAVERSABILITY_ANALYSIS")))
(unless (find-package "TRAVERSABILITY_ANALYSIS::TERRAINGRID")
  (make-package "TRAVERSABILITY_ANALYSIS::TERRAINGRID"))

(in-package "ROS")
;;//! \htmlinclude TerrainGrid.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass traversability_analysis::TerrainGrid
  :super ros::object
  :slots (_status _min_z _bottom_point _points ))

(defmethod traversability_analysis::TerrainGrid
  (:init
   (&key
    ((:status __status) 0)
    ((:min_z __min_z) 0.0)
    ((:bottom_point __bottom_point) (instance geometry_msgs::Point32 :init))
    ((:points __points) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _min_z (float __min_z))
   (setq _bottom_point __bottom_point)
   (setq _points __points)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:min_z
   (&optional __min_z)
   (if __min_z (setq _min_z __min_z)) _min_z)
  (:bottom_point
   (&rest __bottom_point)
   (if (keywordp (car __bottom_point))
       (send* _bottom_point __bottom_point)
     (progn
       (if __bottom_point (setq _bottom_point (car __bottom_point)))
       _bottom_point)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; float32 _min_z
    4
    ;; geometry_msgs/Point32 _bottom_point
    (send _bottom_point :serialization-length)
    ;; sensor_msgs/PointCloud2 _points
    (send _points :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; float32 _min_z
       (sys::poke _min_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32 _bottom_point
       (send _bottom_point :serialize s)
     ;; sensor_msgs/PointCloud2 _points
       (send _points :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _min_z
     (setq _min_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _bottom_point
     (send _bottom_point :deserialize buf ptr-) (incf ptr- (send _bottom_point :serialization-length))
   ;; sensor_msgs/PointCloud2 _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;;
   self)
  )

(setf (get traversability_analysis::TerrainGrid :md5sum-) "e44473ba5f931adc745fc62d9a24efab")
(setf (get traversability_analysis::TerrainGrid :datatype-) "traversability_analysis/TerrainGrid")
(setf (get traversability_analysis::TerrainGrid :definition-)
      "uint8 status

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



(provide :traversability_analysis/TerrainGrid "e44473ba5f931adc745fc62d9a24efab")


