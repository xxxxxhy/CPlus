; Auto-generated. Do not edit!


(cl:in-package ufomap_manager-msg)


;//! \htmlinclude UfomapWithFrontiers.msg.html

(cl:defclass <UfomapWithFrontiers> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ufomap
    :reader ufomap
    :initarg :ufomap
    :type ufomap_msgs-msg:UFOMap
    :initform (cl:make-instance 'ufomap_msgs-msg:UFOMap))
   (local_frontiers
    :reader local_frontiers
    :initarg :local_frontiers
    :type (cl:vector ufomap_manager-msg:CellCode)
   :initform (cl:make-array 0 :element-type 'ufomap_manager-msg:CellCode :initial-element (cl:make-instance 'ufomap_manager-msg:CellCode)))
   (global_frontiers
    :reader global_frontiers
    :initarg :global_frontiers
    :type (cl:vector ufomap_manager-msg:CellCode)
   :initform (cl:make-array 0 :element-type 'ufomap_manager-msg:CellCode :initial-element (cl:make-instance 'ufomap_manager-msg:CellCode)))
   (changed_cell_codes
    :reader changed_cell_codes
    :initarg :changed_cell_codes
    :type (cl:vector ufomap_manager-msg:CellCode)
   :initform (cl:make-array 0 :element-type 'ufomap_manager-msg:CellCode :initial-element (cl:make-instance 'ufomap_manager-msg:CellCode)))
   (known_cell_codes
    :reader known_cell_codes
    :initarg :known_cell_codes
    :type (cl:vector ufomap_manager-msg:CellCode)
   :initform (cl:make-array 0 :element-type 'ufomap_manager-msg:CellCode :initial-element (cl:make-instance 'ufomap_manager-msg:CellCode)))
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (robot_base_frame_id
    :reader robot_base_frame_id
    :initarg :robot_base_frame_id
    :type cl:string
    :initform "")
   (robot_height
    :reader robot_height
    :initarg :robot_height
    :type cl:float
    :initform 0.0)
   (robot_bottom
    :reader robot_bottom
    :initarg :robot_bottom
    :type cl:float
    :initform 0.0)
   (robot_radius
    :reader robot_radius
    :initarg :robot_radius
    :type cl:float
    :initform 0.0)
   (max_range
    :reader max_range
    :initarg :max_range
    :type cl:float
    :initform 0.0)
   (known_plane_cell_num
    :reader known_plane_cell_num
    :initarg :known_plane_cell_num
    :type cl:integer
    :initform 0))
)

(cl:defclass UfomapWithFrontiers (<UfomapWithFrontiers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UfomapWithFrontiers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UfomapWithFrontiers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ufomap_manager-msg:<UfomapWithFrontiers> is deprecated: use ufomap_manager-msg:UfomapWithFrontiers instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:header-val is deprecated.  Use ufomap_manager-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ufomap-val :lambda-list '(m))
(cl:defmethod ufomap-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:ufomap-val is deprecated.  Use ufomap_manager-msg:ufomap instead.")
  (ufomap m))

(cl:ensure-generic-function 'local_frontiers-val :lambda-list '(m))
(cl:defmethod local_frontiers-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:local_frontiers-val is deprecated.  Use ufomap_manager-msg:local_frontiers instead.")
  (local_frontiers m))

(cl:ensure-generic-function 'global_frontiers-val :lambda-list '(m))
(cl:defmethod global_frontiers-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:global_frontiers-val is deprecated.  Use ufomap_manager-msg:global_frontiers instead.")
  (global_frontiers m))

(cl:ensure-generic-function 'changed_cell_codes-val :lambda-list '(m))
(cl:defmethod changed_cell_codes-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:changed_cell_codes-val is deprecated.  Use ufomap_manager-msg:changed_cell_codes instead.")
  (changed_cell_codes m))

(cl:ensure-generic-function 'known_cell_codes-val :lambda-list '(m))
(cl:defmethod known_cell_codes-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:known_cell_codes-val is deprecated.  Use ufomap_manager-msg:known_cell_codes instead.")
  (known_cell_codes m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:frame_id-val is deprecated.  Use ufomap_manager-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'robot_base_frame_id-val :lambda-list '(m))
(cl:defmethod robot_base_frame_id-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:robot_base_frame_id-val is deprecated.  Use ufomap_manager-msg:robot_base_frame_id instead.")
  (robot_base_frame_id m))

(cl:ensure-generic-function 'robot_height-val :lambda-list '(m))
(cl:defmethod robot_height-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:robot_height-val is deprecated.  Use ufomap_manager-msg:robot_height instead.")
  (robot_height m))

(cl:ensure-generic-function 'robot_bottom-val :lambda-list '(m))
(cl:defmethod robot_bottom-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:robot_bottom-val is deprecated.  Use ufomap_manager-msg:robot_bottom instead.")
  (robot_bottom m))

(cl:ensure-generic-function 'robot_radius-val :lambda-list '(m))
(cl:defmethod robot_radius-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:robot_radius-val is deprecated.  Use ufomap_manager-msg:robot_radius instead.")
  (robot_radius m))

(cl:ensure-generic-function 'max_range-val :lambda-list '(m))
(cl:defmethod max_range-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:max_range-val is deprecated.  Use ufomap_manager-msg:max_range instead.")
  (max_range m))

(cl:ensure-generic-function 'known_plane_cell_num-val :lambda-list '(m))
(cl:defmethod known_plane_cell_num-val ((m <UfomapWithFrontiers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ufomap_manager-msg:known_plane_cell_num-val is deprecated.  Use ufomap_manager-msg:known_plane_cell_num instead.")
  (known_plane_cell_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UfomapWithFrontiers>) ostream)
  "Serializes a message object of type '<UfomapWithFrontiers>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ufomap) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'local_frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'local_frontiers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'global_frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'global_frontiers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'changed_cell_codes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'changed_cell_codes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'known_cell_codes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'known_cell_codes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_base_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_base_frame_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robot_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robot_bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robot_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'known_plane_cell_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'known_plane_cell_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'known_plane_cell_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'known_plane_cell_num)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UfomapWithFrontiers>) istream)
  "Deserializes a message object of type '<UfomapWithFrontiers>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ufomap) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'local_frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'local_frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ufomap_manager-msg:CellCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'global_frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'global_frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ufomap_manager-msg:CellCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'changed_cell_codes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'changed_cell_codes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ufomap_manager-msg:CellCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'known_cell_codes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'known_cell_codes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ufomap_manager-msg:CellCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_base_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_base_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_bottom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'known_plane_cell_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'known_plane_cell_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'known_plane_cell_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'known_plane_cell_num)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UfomapWithFrontiers>)))
  "Returns string type for a message object of type '<UfomapWithFrontiers>"
  "ufomap_manager/UfomapWithFrontiers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UfomapWithFrontiers)))
  "Returns string type for a message object of type 'UfomapWithFrontiers"
  "ufomap_manager/UfomapWithFrontiers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UfomapWithFrontiers>)))
  "Returns md5sum for a message object of type '<UfomapWithFrontiers>"
  "22e13be68b8e1ef450cd96e270be998b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UfomapWithFrontiers)))
  "Returns md5sum for a message object of type 'UfomapWithFrontiers"
  "22e13be68b8e1ef450cd96e270be998b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UfomapWithFrontiers>)))
  "Returns full string definition for message of type '<UfomapWithFrontiers>"
  (cl:format cl:nil "Header header~%~%ufomap_msgs/UFOMap  ufomap~%~%#geometry_msgs/Point[] local_frontiers_center~%#geometry_msgs/Point[] global_frontiers_center~%#~%#int32 frontiers_depth~%~%ufomap_manager/CellCode[] local_frontiers~%ufomap_manager/CellCode[] global_frontiers~%ufomap_manager/CellCode[] changed_cell_codes~%ufomap_manager/CellCode[] known_cell_codes~%~%# 构建ufomap时机器人的参数配置~%string frame_id~%string robot_base_frame_id~%float64 robot_height~%float64 robot_bottom~%float64 robot_radius~%float64 max_range~%~%uint32 known_plane_cell_num~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%================================================================================~%MSG: ufomap_manager/CellCode~%uint32 depth~%uint64 Code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UfomapWithFrontiers)))
  "Returns full string definition for message of type 'UfomapWithFrontiers"
  (cl:format cl:nil "Header header~%~%ufomap_msgs/UFOMap  ufomap~%~%#geometry_msgs/Point[] local_frontiers_center~%#geometry_msgs/Point[] global_frontiers_center~%#~%#int32 frontiers_depth~%~%ufomap_manager/CellCode[] local_frontiers~%ufomap_manager/CellCode[] global_frontiers~%ufomap_manager/CellCode[] changed_cell_codes~%ufomap_manager/CellCode[] known_cell_codes~%~%# 构建ufomap时机器人的参数配置~%string frame_id~%string robot_base_frame_id~%float64 robot_height~%float64 robot_bottom~%float64 robot_radius~%float64 max_range~%~%uint32 known_plane_cell_num~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ufomap_msgs/UFOMap~%# A 3D map in binary format, as Octree~%ufomap_msgs/UFOMapMetaData info~%~%# Binary serialization of Octree, use conversions.h to read and write octrees~%int8[] data~%================================================================================~%MSG: ufomap_msgs/UFOMapMetaData~%# File version used~%string version~%~%# Class id of the contained Octree~%string id~%~%# Resolution (in m) of the octree leaf nodes~%float64 resolution~%~%# Number of depth levels~%uint8 depth_levels~%~%# If data is compressed~%bool compressed~%~%# Size of data uncompressed~%int32 uncompressed_data_size~%~%# Bounding volume~%ufomap_msgs/BoundingVolume bounding_volume~%================================================================================~%MSG: ufomap_msgs/BoundingVolume~%ufomap_msgs/AABB[] aabbs~%~%# ufomap_msgs/Capsule[] capsules~%~%# ufomap_msgs/Cone[] cones~%~%# ufomap_msgs/Cylinder[] cylinders~%~%# ufomap_msgs/Ellipsoid[] ellipsoids~%~%ufomap_msgs/Frustum[] frustums~%~%ufomap_msgs/LineSegment[] line_segments~%~%ufomap_msgs/OBB[] obbs~%~%ufomap_msgs/Plane[] planes~%~%ufomap_msgs/Point[] points~%~%ufomap_msgs/Ray[] rays~%~%ufomap_msgs/Sphere[] spheres~%~%# ufomap_msgs/Triangle[] triangles~%================================================================================~%MSG: ufomap_msgs/AABB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%================================================================================~%MSG: ufomap_msgs/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ufomap_msgs/Frustum~%ufomap_msgs/Plane[6] planes~%================================================================================~%MSG: ufomap_msgs/Plane~%ufomap_msgs/Point normal~%~%float64 distance~%================================================================================~%MSG: ufomap_msgs/LineSegment~%ufomap_msgs/Point start~%~%ufomap_msgs/Point end~%================================================================================~%MSG: ufomap_msgs/OBB~%ufomap_msgs/Point center~%~%ufomap_msgs/Point half_size~%~%ufomap_msgs/Point rotation~%================================================================================~%MSG: ufomap_msgs/Ray~%ufomap_msgs/Point origin~%~%ufomap_msgs/Point direction~%================================================================================~%MSG: ufomap_msgs/Sphere~%ufomap_msgs/Point center~%~%float64 radius~%================================================================================~%MSG: ufomap_manager/CellCode~%uint32 depth~%uint64 Code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UfomapWithFrontiers>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ufomap))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'local_frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'global_frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'changed_cell_codes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'known_cell_codes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:length (cl:slot-value msg 'robot_base_frame_id))
     8
     8
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UfomapWithFrontiers>))
  "Converts a ROS message object to a list"
  (cl:list 'UfomapWithFrontiers
    (cl:cons ':header (header msg))
    (cl:cons ':ufomap (ufomap msg))
    (cl:cons ':local_frontiers (local_frontiers msg))
    (cl:cons ':global_frontiers (global_frontiers msg))
    (cl:cons ':changed_cell_codes (changed_cell_codes msg))
    (cl:cons ':known_cell_codes (known_cell_codes msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':robot_base_frame_id (robot_base_frame_id msg))
    (cl:cons ':robot_height (robot_height msg))
    (cl:cons ':robot_bottom (robot_bottom msg))
    (cl:cons ':robot_radius (robot_radius msg))
    (cl:cons ':max_range (max_range msg))
    (cl:cons ':known_plane_cell_num (known_plane_cell_num msg))
))
