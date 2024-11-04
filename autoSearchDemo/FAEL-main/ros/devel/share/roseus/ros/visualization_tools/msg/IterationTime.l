;; Auto-generated. Do not edit!


(when (boundp 'visualization_tools::IterationTime)
  (if (not (find-package "VISUALIZATION_TOOLS"))
    (make-package "VISUALIZATION_TOOLS"))
  (shadow 'IterationTime (find-package "VISUALIZATION_TOOLS")))
(unless (find-package "VISUALIZATION_TOOLS::ITERATIONTIME")
  (make-package "VISUALIZATION_TOOLS::ITERATIONTIME"))

(in-package "ROS")
;;//! \htmlinclude IterationTime.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization_tools::IterationTime
  :super ros::object
  :slots (_header _current_time _iterationTime _timeConsumed ))

(defmethod visualization_tools::IterationTime
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_time __current_time) 0.0)
    ((:iterationTime __iterationTime) 0.0)
    ((:timeConsumed __timeConsumed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_time (float __current_time))
   (setq _iterationTime (float __iterationTime))
   (setq _timeConsumed (float __timeConsumed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_time
   (&optional __current_time)
   (if __current_time (setq _current_time __current_time)) _current_time)
  (:iterationTime
   (&optional __iterationTime)
   (if __iterationTime (setq _iterationTime __iterationTime)) _iterationTime)
  (:timeConsumed
   (&optional __timeConsumed)
   (if __timeConsumed (setq _timeConsumed __timeConsumed)) _timeConsumed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _current_time
    8
    ;; float64 _iterationTime
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
     ;; float64 _current_time
       (sys::poke _current_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _iterationTime
       (sys::poke _iterationTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeConsumed
       (sys::poke _timeConsumed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _current_time
     (setq _current_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _iterationTime
     (setq _iterationTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeConsumed
     (setq _timeConsumed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get visualization_tools::IterationTime :md5sum-) "158c4276d8a115458c5e1a0e1466f4ca")
(setf (get visualization_tools::IterationTime :datatype-) "visualization_tools/IterationTime")
(setf (get visualization_tools::IterationTime :definition-)
      "
Header header
float64 current_time
float64 iterationTime
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



(provide :visualization_tools/IterationTime "158c4276d8a115458c5e1a0e1466f4ca")


