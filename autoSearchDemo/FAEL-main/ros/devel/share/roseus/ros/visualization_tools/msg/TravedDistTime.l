;; Auto-generated. Do not edit!


(when (boundp 'visualization_tools::TravedDistTime)
  (if (not (find-package "VISUALIZATION_TOOLS"))
    (make-package "VISUALIZATION_TOOLS"))
  (shadow 'TravedDistTime (find-package "VISUALIZATION_TOOLS")))
(unless (find-package "VISUALIZATION_TOOLS::TRAVEDDISTTIME")
  (make-package "VISUALIZATION_TOOLS::TRAVEDDISTTIME"))

(in-package "ROS")
;;//! \htmlinclude TravedDistTime.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization_tools::TravedDistTime
  :super ros::object
  :slots (_header _travedDist _timeConsumed ))

(defmethod visualization_tools::TravedDistTime
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:travedDist __travedDist) 0.0)
    ((:timeConsumed __timeConsumed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _travedDist (float __travedDist))
   (setq _timeConsumed (float __timeConsumed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:travedDist
   (&optional __travedDist)
   (if __travedDist (setq _travedDist __travedDist)) _travedDist)
  (:timeConsumed
   (&optional __timeConsumed)
   (if __timeConsumed (setq _timeConsumed __timeConsumed)) _timeConsumed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _travedDist
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
     ;; float64 _travedDist
       (sys::poke _travedDist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeConsumed
       (sys::poke _timeConsumed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _travedDist
     (setq _travedDist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeConsumed
     (setq _timeConsumed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get visualization_tools::TravedDistTime :md5sum-) "de1f80a1c80af0b23ddd31796ccb9ea0")
(setf (get visualization_tools::TravedDistTime :datatype-) "visualization_tools/TravedDistTime")
(setf (get visualization_tools::TravedDistTime :definition-)
      "
Header header
float64 travedDist
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



(provide :visualization_tools/TravedDistTime "de1f80a1c80af0b23ddd31796ccb9ea0")


