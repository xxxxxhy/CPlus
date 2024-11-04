;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::Frustum)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'Frustum (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::FRUSTUM")
  (make-package "UFOMAP_MSGS::FRUSTUM"))

(in-package "ROS")
;;//! \htmlinclude Frustum.msg.html


(defclass ufomap_msgs::Frustum
  :super ros::object
  :slots (_planes ))

(defmethod ufomap_msgs::Frustum
  (:init
   (&key
    ((:planes __planes) (let (r) (dotimes (i 6) (push (instance ufomap_msgs::Plane :init) r)) r))
    )
   (send-super :init)
   (setq _planes __planes)
   self)
  (:planes
   (&rest __planes)
   (if (keywordp (car __planes))
       (send* _planes __planes)
     (progn
       (if __planes (setq _planes (car __planes)))
       _planes)))
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/Plane[6] _planes
    (apply #'+ (send-all _planes :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/Plane[6] _planes
     (dolist (elem _planes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/Plane[6] _planes
   (dotimes (i 6)
     (send (elt _planes i) :deserialize buf ptr-) (incf ptr- (send (elt _planes i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get ufomap_msgs::Frustum :md5sum-) "252aef435fbaa9c4118f62666383e936")
(setf (get ufomap_msgs::Frustum :datatype-) "ufomap_msgs/Frustum")
(setf (get ufomap_msgs::Frustum :definition-)
      "ufomap_msgs/Plane[6] planes
================================================================================
MSG: ufomap_msgs/Plane
ufomap_msgs/Point normal

float64 distance
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
")



(provide :ufomap_msgs/Frustum "252aef435fbaa9c4118f62666383e936")


