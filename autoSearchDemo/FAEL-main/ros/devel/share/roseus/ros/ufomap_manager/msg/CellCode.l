;; Auto-generated. Do not edit!


(when (boundp 'ufomap_manager::CellCode)
  (if (not (find-package "UFOMAP_MANAGER"))
    (make-package "UFOMAP_MANAGER"))
  (shadow 'CellCode (find-package "UFOMAP_MANAGER")))
(unless (find-package "UFOMAP_MANAGER::CELLCODE")
  (make-package "UFOMAP_MANAGER::CELLCODE"))

(in-package "ROS")
;;//! \htmlinclude CellCode.msg.html


(defclass ufomap_manager::CellCode
  :super ros::object
  :slots (_depth _Code ))

(defmethod ufomap_manager::CellCode
  (:init
   (&key
    ((:depth __depth) 0)
    ((:Code __Code) 0)
    )
   (send-super :init)
   (setq _depth (round __depth))
   (setq _Code (round __Code))
   self)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:Code
   (&optional __Code)
   (if __Code (setq _Code __Code)) _Code)
  (:serialization-length
   ()
   (+
    ;; uint32 _depth
    4
    ;; uint64 _Code
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _depth
       (write-long _depth s)
     ;; uint64 _Code
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Code (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Code) (= (length (_Code . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Code . bv) 0) 0) s)
              (write-long (ash (elt (_Code . bv) 1) -1) s))
             ((and (class _Code) (= (length (_Code . bv)) 1)) ;; big1
              (write-long (elt (_Code . bv) 0) s)
              (write-long (if (>= _Code 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Code s)(write-long (if (>= _Code 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _depth
     (setq _depth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _Code
     
#+(or :alpha :irix6 :x86_64)
      (setf _Code (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Code (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get ufomap_manager::CellCode :md5sum-) "b94fd8468f8b44ebfb1a755ca2d3ecbd")
(setf (get ufomap_manager::CellCode :datatype-) "ufomap_manager/CellCode")
(setf (get ufomap_manager::CellCode :definition-)
      "uint32 depth
uint64 Code

")



(provide :ufomap_manager/CellCode "b94fd8468f8b44ebfb1a755ca2d3ecbd")


