;; Auto-generated. Do not edit!


(when (boundp 'visualization_tools::ViewpointGain)
  (if (not (find-package "VISUALIZATION_TOOLS"))
    (make-package "VISUALIZATION_TOOLS"))
  (shadow 'ViewpointGain (find-package "VISUALIZATION_TOOLS")))
(unless (find-package "VISUALIZATION_TOOLS::VIEWPOINTGAIN")
  (make-package "VISUALIZATION_TOOLS::VIEWPOINTGAIN"))

(in-package "ROS")
;;//! \htmlinclude ViewpointGain.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visualization_tools::ViewpointGain
  :super ros::object
  :slots (_header _viewpoints_ids _frontiers_gains _unmapped_gains ))

(defmethod visualization_tools::ViewpointGain
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:viewpoints_ids __viewpoints_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:frontiers_gains __frontiers_gains) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:unmapped_gains __unmapped_gains) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _viewpoints_ids __viewpoints_ids)
   (setq _frontiers_gains __frontiers_gains)
   (setq _unmapped_gains __unmapped_gains)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:viewpoints_ids
   (&optional __viewpoints_ids)
   (if __viewpoints_ids (setq _viewpoints_ids __viewpoints_ids)) _viewpoints_ids)
  (:frontiers_gains
   (&optional __frontiers_gains)
   (if __frontiers_gains (setq _frontiers_gains __frontiers_gains)) _frontiers_gains)
  (:unmapped_gains
   (&optional __unmapped_gains)
   (if __unmapped_gains (setq _unmapped_gains __unmapped_gains)) _unmapped_gains)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _viewpoints_ids
    (* 4    (length _viewpoints_ids)) 4
    ;; float64[] _frontiers_gains
    (* 8    (length _frontiers_gains)) 4
    ;; float64[] _unmapped_gains
    (* 8    (length _unmapped_gains)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _viewpoints_ids
     (write-long (length _viewpoints_ids) s)
     (dotimes (i (length _viewpoints_ids))
       (write-long (elt _viewpoints_ids i) s)
       )
     ;; float64[] _frontiers_gains
     (write-long (length _frontiers_gains) s)
     (dotimes (i (length _frontiers_gains))
       (sys::poke (elt _frontiers_gains i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _unmapped_gains
     (write-long (length _unmapped_gains) s)
     (dotimes (i (length _unmapped_gains))
       (sys::poke (elt _unmapped_gains i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _viewpoints_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _viewpoints_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _viewpoints_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _frontiers_gains
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers_gains (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _frontiers_gains i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _unmapped_gains
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unmapped_gains (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _unmapped_gains i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get visualization_tools::ViewpointGain :md5sum-) "0a86d71165359171b73a9d35ab987e6f")
(setf (get visualization_tools::ViewpointGain :datatype-) "visualization_tools/ViewpointGain")
(setf (get visualization_tools::ViewpointGain :definition-)
      "Header header
int32[] viewpoints_ids
float64[] frontiers_gains
float64[] unmapped_gains
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



(provide :visualization_tools/ViewpointGain "0a86d71165359171b73a9d35ab987e6f")


