;; Auto-generated. Do not edit!


(when (boundp 'visualization_tools::ExploredVolumeTravedDist)
  (if (not (find-package "VISUALIZATION_TOOLS"))
    (make-package "VISUALIZATION_TOOLS"))
  (shadow 'ExploredVolumeTravedDist (find-package "VISUALIZATION_TOOLS")))
(unless (find-package "VISUALIZATION_TOOLS::EXPLOREDVOLUMETRAVEDDIST")
  (make-package "VISUALIZATION_TOOLS::EXPLOREDVOLUMETRAVEDDIST"))

(in-package "ROS")
;;//! \htmlinclude ExploredVolumeTravedDist.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization_tools::ExploredVolumeTravedDist
  :super ros::object
  :slots (_header _exploredVolume _travedDist ))

(defmethod visualization_tools::ExploredVolumeTravedDist
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:exploredVolume __exploredVolume) 0.0)
    ((:travedDist __travedDist) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _exploredVolume (float __exploredVolume))
   (setq _travedDist (float __travedDist))
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
  (:travedDist
   (&optional __travedDist)
   (if __travedDist (setq _travedDist __travedDist)) _travedDist)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _exploredVolume
    8
    ;; float64 _travedDist
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
     ;; float64 _travedDist
       (sys::poke _travedDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _exploredVolume
     (setq _exploredVolume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _travedDist
     (setq _travedDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get visualization_tools::ExploredVolumeTravedDist :md5sum-) "e0c06bd8d6539e3eda299d9dcba041e2")
(setf (get visualization_tools::ExploredVolumeTravedDist :datatype-) "visualization_tools/ExploredVolumeTravedDist")
(setf (get visualization_tools::ExploredVolumeTravedDist :definition-)
      "
Header header
float64 exploredVolume
float64 travedDist
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



(provide :visualization_tools/ExploredVolumeTravedDist "e0c06bd8d6539e3eda299d9dcba041e2")


