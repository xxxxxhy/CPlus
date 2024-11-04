;; Auto-generated. Do not edit!


(when (boundp 'visualization_tools::ExploredVolumeTime)
  (if (not (find-package "VISUALIZATION_TOOLS"))
    (make-package "VISUALIZATION_TOOLS"))
  (shadow 'ExploredVolumeTime (find-package "VISUALIZATION_TOOLS")))
(unless (find-package "VISUALIZATION_TOOLS::EXPLOREDVOLUMETIME")
  (make-package "VISUALIZATION_TOOLS::EXPLOREDVOLUMETIME"))

(in-package "ROS")
;;//! \htmlinclude ExploredVolumeTime.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization_tools::ExploredVolumeTime
  :super ros::object
  :slots (_header _exploredVolume _timeConsumed ))

(defmethod visualization_tools::ExploredVolumeTime
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:exploredVolume __exploredVolume) 0.0)
    ((:timeConsumed __timeConsumed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _exploredVolume (float __exploredVolume))
   (setq _timeConsumed (float __timeConsumed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:exploredVolume
   (&optional __exploredVolume)
   (if __exploredVolume (setq _exploredVolume __exploredVolume)) _exploredVolume)
  (:timeConsumed
   (&optional __timeConsumed)
   (if __timeConsumed (setq _timeConsumed __timeConsumed)) _timeConsumed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _exploredVolume
    8
    ;; float64 _timeConsumed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _exploredVolume
       (sys::poke _exploredVolume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeConsumed
       (sys::poke _timeConsumed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _exploredVolume
     (setq _exploredVolume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeConsumed
     (setq _timeConsumed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get visualization_tools::ExploredVolumeTime :md5sum-) "5732d1515df1390da45ee3dfaec0a262")
(setf (get visualization_tools::ExploredVolumeTime :datatype-) "visualization_tools/ExploredVolumeTime")
(setf (get visualization_tools::ExploredVolumeTime :definition-)
      "
Header header
float64 exploredVolume
float64 timeConsumed
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

")



(provide :visualization_tools/ExploredVolumeTime "5732d1515df1390da45ee3dfaec0a262")


