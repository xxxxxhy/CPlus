; Auto-generated. Do not edit!


(cl:in-package ufomap_srvs-srv)


;//! \htmlinclude ClearVolume-request.msg.html

(cl:defclass <ClearVolume-request> (roslisp-msg-protocol:ros-message)
  ((bounding_volume
    :reader bounding_volume
    :initarg :bounding_volume
    :type ufomap_msgs-msg:BoundingVolume
    :initform (cl:make-instance 'ufomap_msgs-msg:BoundingVolume))
   (depth
    :reader depth
    :initarg :depth
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClearVolume-request (<ClearVolume-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearVolume-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearVolume-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_srvs-srv:<ClearVolume-request> is deprecated: use ufomap_srvs-srv:ClearVolume-request instead.")))

(cl:ensure-generic-function 'bounding_volume-val :lambda-list '(m))
(cl:defmethod bounding_volume-val ((m <ClearVolume-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:bounding_volume-val is deprecated.  Use ufomap_srvs-srv:bounding_volume instead.")
  (bounding_volume m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <ClearVolume-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:depth-val is deprecated.  Use ufomap_srvs-srv:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearVolume-request>) ostream)
  "Serializes a message object of type '<ClearVolume-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_volume) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearVolume-request>) istream)
  "Deserializes a message object of type '<ClearVolume-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_volume) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'depth)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearVolume-request>)))
  "Returns string type for a service object of type '<ClearVolume-request>"
  "ufomap_srvs/ClearVolumeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearVolume-request)))
  "Returns string type for a service object of type 'ClearVolume-request"
  "ufomap_srvs/ClearVolumeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearVolume-request>)))
  "Returns md5sum for a message object of type '<ClearVolume-request>"
  "d2fd0d5791e4eff60d2c257423ccf8ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearVolume-request)))
  "Returns md5sum for a message object of type 'ClearVolume-request"
  "d2fd0d5791e4eff60d2c257423ccf8ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearVolume-request>)))
  "Returns full string definition for message of type '<ClearVolume-request>"
  (cl:format cl:nil "# Clear a part of the map, specified by a bounding volume. ~%# Sets all voxels inside the bounding volume to ~~clamping_thres_min/free space.~%~%# The bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%# The depth at which it should be cleared~%uint8 depth~%~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearVolume-request)))
  "Returns full string definition for message of type 'ClearVolume-request"
  (cl:format cl:nil "# Clear a part of the map, specified by a bounding volume. ~%# Sets all voxels inside the bounding volume to ~~clamping_thres_min/free space.~%~%# The bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%# The depth at which it should be cleared~%uint8 depth~%~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearVolume-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_volume))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearVolume-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearVolume-request
    (cl:cons ':bounding_volume (bounding_volume msg))
    (cl:cons ':depth (depth msg))
))
;//! \htmlinclude ClearVolume-response.msg.html

(cl:defclass <ClearVolume-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearVolume-response (<ClearVolume-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearVolume-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearVolume-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_srvs-srv:<ClearVolume-response> is deprecated: use ufomap_srvs-srv:ClearVolume-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ClearVolume-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_srvs-srv:success-val is deprecated.  Use ufomap_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearVolume-response>) ostream)
  "Serializes a message object of type '<ClearVolume-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearVolume-response>) istream)
  "Deserializes a message object of type '<ClearVolume-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearVolume-response>)))
  "Returns string type for a service object of type '<ClearVolume-response>"
  "ufomap_srvs/ClearVolumeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearVolume-response)))
  "Returns string type for a service object of type 'ClearVolume-response"
  "ufomap_srvs/ClearVolumeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearVolume-response>)))
  "Returns md5sum for a message object of type '<ClearVolume-response>"
  "d2fd0d5791e4eff60d2c257423ccf8ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearVolume-response)))
  "Returns md5sum for a message object of type 'ClearVolume-response"
  "d2fd0d5791e4eff60d2c257423ccf8ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearVolume-response>)))
  "Returns full string definition for message of type '<ClearVolume-response>"
  (cl:format cl:nil "# If it was successful~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearVolume-response)))
  "Returns full string definition for message of type 'ClearVolume-response"
  (cl:format cl:nil "# If it was successful~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearVolume-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearVolume-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearVolume-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearVolume)))
  'ClearVolume-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearVolume)))
  'ClearVolume-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearVolume)))
  "Returns string type for a service object of type '<ClearVolume>"
  "ufomap_srvs/ClearVolume")