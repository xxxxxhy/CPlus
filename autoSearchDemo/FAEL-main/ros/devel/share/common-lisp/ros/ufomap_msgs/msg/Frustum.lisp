; Auto-generated. Do not edit!


(cl:in-package ufomap_msgs-msg)


;//! \htmlinclude Frustum.msg.html

(cl:defclass <Frustum> (roslisp-msg-protocol:ros-message)
  ((planes
    :reader planes
    :initarg :planes
    :type (cl:vector ufomap_msgs-msg:Plane)
   :initform (cl:make-array 6 :element-type 'ufomap_msgs-msg:Plane :initial-element (cl:make-instance 'ufomap_msgs-msg:Plane))))
)

(cl:defclass Frustum (<Frustum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frustum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frustum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_msgs-msg:<Frustum> is deprecated: use ufomap_msgs-msg:Frustum instead.")))

(cl:ensure-generic-function 'planes-val :lambda-list '(m))
(cl:defmethod planes-val ((m <Frustum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_msgs-msg:planes-val is deprecated.  Use ufomap_msgs-msg:planes instead.")
  (planes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frustum>) ostream)
  "Serializes a message object of type '<Frustum>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'planes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frustum>) istream)
  "Deserializes a message object of type '<Frustum>"
  (cl:setf (cl:slot-value msg 'planes) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'planes)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ufomap_msgs-msg:Plane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frustum>)))
  "Returns string type for a message object of type '<Frustum>"
  "ufomap_msgs/Frustum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frustum)))
  "Returns string type for a message object of type 'Frustum"
  "ufomap_msgs/Frustum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frustum>)))
  "Returns md5sum for a message object of type '<Frustum>"
  "252aef435fbaa9c4118f62666383e936")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frustum)))
  "Returns md5sum for a message object of type 'Frustum"
  "252aef435fbaa9c4118f62666383e936")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frustum>)))
  "Returns full string definition for message of type '<Frustum>"
  (cl:format cl:nil "ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frustum)))
  "Returns full string definition for message of type 'Frustum"
  (cl:format cl:nil "ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frustum>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'planes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frustum>))
  "Converts a ROS message object to a list"
  (cl:list 'Frustum
    (cl:cons ':planes (planes msg))
))
