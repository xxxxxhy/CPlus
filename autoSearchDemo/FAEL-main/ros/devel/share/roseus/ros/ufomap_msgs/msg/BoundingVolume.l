;; Auto-generated. Do not edit!


(when (boundp 'ufomap_msgs::BoundingVolume)
  (if (not (find-package "UFOMAP_MSGS"))
    (make-package "UFOMAP_MSGS"))
  (shadow 'BoundingVolume (find-package "UFOMAP_MSGS")))
(unless (find-package "UFOMAP_MSGS::BOUNDINGVOLUME")
  (make-package "UFOMAP_MSGS::BOUNDINGVOLUME"))

(in-package "ROS")
;;//! \htmlinclude BoundingVolume.msg.html


(defclass ufomap_msgs::BoundingVolume
  :super ros::object
  :slots (_aabbs _frustums _line_segments _obbs _planes _points _rays _spheres ))

(defmethod ufomap_msgs::BoundingVolume
  (:init
   (&key
    ((:aabbs __aabbs) ())
    ((:frustums __frustums) ())
    ((:line_segments __line_segments) ())
    ((:obbs __obbs) ())
    ((:planes __planes) ())
    ((:points __points) ())
    ((:rays __rays) ())
    ((:spheres __spheres) ())
    )
   (send-super :init)
   (setq _aabbs __aabbs)
   (setq _frustums __frustums)
   (setq _line_segments __line_segments)
   (setq _obbs __obbs)
   (setq _planes __planes)
   (setq _points __points)
   (setq _rays __rays)
   (setq _spheres __spheres)
   self)
  (:aabbs
   (&rest __aabbs)
   (if (keywordp (car __aabbs))
       (send* _aabbs __aabbs)
     (progn
       (if __aabbs (setq _aabbs (car __aabbs)))
       _aabbs)))
  (:frustums
   (&rest __frustums)
   (if (keywordp (car __frustums))
       (send* _frustums __frustums)
     (progn
       (if __frustums (setq _frustums (car __frustums)))
       _frustums)))
  (:line_segments
   (&rest __line_segments)
   (if (keywordp (car __line_segments))
       (send* _line_segments __line_segments)
     (progn
       (if __line_segments (setq _line_segments (car __line_segments)))
       _line_segments)))
  (:obbs
   (&rest __obbs)
   (if (keywordp (car __obbs))
       (send* _obbs __obbs)
     (progn
       (if __obbs (setq _obbs (car __obbs)))
       _obbs)))
  (:planes
   (&rest __planes)
   (if (keywordp (car __planes))
       (send* _planes __planes)
     (progn
       (if __planes (setq _planes (car __planes)))
       _planes)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:rays
   (&rest __rays)
   (if (keywordp (car __rays))
       (send* _rays __rays)
     (progn
       (if __rays (setq _rays (car __rays)))
       _rays)))
  (:spheres
   (&rest __spheres)
   (if (keywordp (car __spheres))
       (send* _spheres __spheres)
     (progn
       (if __spheres (setq _spheres (car __spheres)))
       _spheres)))
  (:serialization-length
   ()
   (+
    ;; ufomap_msgs/AABB[] _aabbs
    (apply #'+ (send-all _aabbs :serialization-length)) 4
    ;; ufomap_msgs/Frustum[] _frustums
    (apply #'+ (send-all _frustums :serialization-length)) 4
    ;; ufomap_msgs/LineSegment[] _line_segments
    (apply #'+ (send-all _line_segments :serialization-length)) 4
    ;; ufomap_msgs/OBB[] _obbs
    (apply #'+ (send-all _obbs :serialization-length)) 4
    ;; ufomap_msgs/Plane[] _planes
    (apply #'+ (send-all _planes :serialization-length)) 4
    ;; ufomap_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; ufomap_msgs/Ray[] _rays
    (apply #'+ (send-all _rays :serialization-length)) 4
    ;; ufomap_msgs/Sphere[] _spheres
    (apply #'+ (send-all _spheres :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ufomap_msgs/AABB[] _aabbs
     (write-long (length _aabbs) s)
     (dolist (elem _aabbs)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/Frustum[] _frustums
     (write-long (length _frustums) s)
     (dolist (elem _frustums)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/LineSegment[] _line_segments
     (write-long (length _line_segments) s)
     (dolist (elem _line_segments)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/OBB[] _obbs
     (write-long (length _obbs) s)
     (dolist (elem _obbs)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/Plane[] _planes
     (write-long (length _planes) s)
     (dolist (elem _planes)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/Ray[] _rays
     (write-long (length _rays) s)
     (dolist (elem _rays)
       (send elem :serialize s)
       )
     ;; ufomap_msgs/Sphere[] _spheres
     (write-long (length _spheres) s)
     (dolist (elem _spheres)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ufomap_msgs/AABB[] _aabbs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aabbs (let (r) (dotimes (i n) (push (instance ufomap_msgs::AABB :init) r)) r))
     (dolist (elem- _aabbs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/Frustum[] _frustums
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frustums (let (r) (dotimes (i n) (push (instance ufomap_msgs::Frustum :init) r)) r))
     (dolist (elem- _frustums)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/LineSegment[] _line_segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_segments (let (r) (dotimes (i n) (push (instance ufomap_msgs::LineSegment :init) r)) r))
     (dolist (elem- _line_segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/OBB[] _obbs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obbs (let (r) (dotimes (i n) (push (instance ufomap_msgs::OBB :init) r)) r))
     (dolist (elem- _obbs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/Plane[] _planes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planes (let (r) (dotimes (i n) (push (instance ufomap_msgs::Plane :init) r)) r))
     (dolist (elem- _planes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance ufomap_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/Ray[] _rays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rays (let (r) (dotimes (i n) (push (instance ufomap_msgs::Ray :init) r)) r))
     (dolist (elem- _rays)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ufomap_msgs/Sphere[] _spheres
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _spheres (let (r) (dotimes (i n) (push (instance ufomap_msgs::Sphere :init) r)) r))
     (dolist (elem- _spheres)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ufomap_msgs::BoundingVolume :md5sum-) "82212eec286e703b5b3c33cc90377d90")
(setf (get ufomap_msgs::BoundingVolume :datatype-) "ufomap_msgs/BoundingVolume")
(setf (get ufomap_msgs::BoundingVolume :definition-)
      "ufomap_msgs/AABB[] aabbs

# ufomap_msgs/Capsule[] capsules

# ufomap_msgs/Cone[] cones

# ufomap_msgs/Cylinder[] cylinders

# ufomap_msgs/Ellipsoid[] ellipsoids

ufomap_msgs/Frustum[] frustums

ufomap_msgs/LineSegment[] line_segments

ufomap_msgs/OBB[] obbs

ufomap_msgs/Plane[] planes

ufomap_msgs/Point[] points

ufomap_msgs/Ray[] rays

ufomap_msgs/Sphere[] spheres

# ufomap_msgs/Triangle[] triangles
================================================================================
MSG: ufomap_msgs/AABB
ufomap_msgs/Point center

ufomap_msgs/Point half_size
================================================================================
MSG: ufomap_msgs/Point
float64 x
float64 y
float64 z
================================================================================
MSG: ufomap_msgs/Frustum
ufomap_msgs/Plane[6] planes
================================================================================
MSG: ufomap_msgs/Plane
ufomap_msgs/Point normal

float64 distance
================================================================================
MSG: ufomap_msgs/LineSegment
ufomap_msgs/Point start

ufomap_msgs/Point end
================================================================================
MSG: ufomap_msgs/OBB
ufomap_msgs/Point center

ufomap_msgs/Point half_size

ufomap_msgs/Point rotation
================================================================================
MSG: ufomap_msgs/Ray
ufomap_msgs/Point origin

ufomap_msgs/Point direction
================================================================================
MSG: ufomap_msgs/Sphere
ufomap_msgs/Point center

float64 radius
")



(provide :ufomap_msgs/BoundingVolume "82212eec286e703b5b3c33cc90377d90")


