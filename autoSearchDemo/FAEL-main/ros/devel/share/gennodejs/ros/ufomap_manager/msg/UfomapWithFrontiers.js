// Auto-generated. Do not edit!

// (in-package ufomap_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CellCode = require('./CellCode.js');
let ufomap_msgs = _finder('ufomap_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UfomapWithFrontiers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ufomap = null;
      this.local_frontiers = null;
      this.global_frontiers = null;
      this.changed_cell_codes = null;
      this.known_cell_codes = null;
      this.frame_id = null;
      this.robot_base_frame_id = null;
      this.robot_height = null;
      this.robot_bottom = null;
      this.robot_radius = null;
      this.max_range = null;
      this.known_plane_cell_num = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ufomap')) {
        this.ufomap = initObj.ufomap
      }
      else {
        this.ufomap = new ufomap_msgs.msg.UFOMap();
      }
      if (initObj.hasOwnProperty('local_frontiers')) {
        this.local_frontiers = initObj.local_frontiers
      }
      else {
        this.local_frontiers = [];
      }
      if (initObj.hasOwnProperty('global_frontiers')) {
        this.global_frontiers = initObj.global_frontiers
      }
      else {
        this.global_frontiers = [];
      }
      if (initObj.hasOwnProperty('changed_cell_codes')) {
        this.changed_cell_codes = initObj.changed_cell_codes
      }
      else {
        this.changed_cell_codes = [];
      }
      if (initObj.hasOwnProperty('known_cell_codes')) {
        this.known_cell_codes = initObj.known_cell_codes
      }
      else {
        this.known_cell_codes = [];
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('robot_base_frame_id')) {
        this.robot_base_frame_id = initObj.robot_base_frame_id
      }
      else {
        this.robot_base_frame_id = '';
      }
      if (initObj.hasOwnProperty('robot_height')) {
        this.robot_height = initObj.robot_height
      }
      else {
        this.robot_height = 0.0;
      }
      if (initObj.hasOwnProperty('robot_bottom')) {
        this.robot_bottom = initObj.robot_bottom
      }
      else {
        this.robot_bottom = 0.0;
      }
      if (initObj.hasOwnProperty('robot_radius')) {
        this.robot_radius = initObj.robot_radius
      }
      else {
        this.robot_radius = 0.0;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
      if (initObj.hasOwnProperty('known_plane_cell_num')) {
        this.known_plane_cell_num = initObj.known_plane_cell_num
      }
      else {
        this.known_plane_cell_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UfomapWithFrontiers
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ufomap]
    bufferOffset = ufomap_msgs.msg.UFOMap.serialize(obj.ufomap, buffer, bufferOffset);
    // Serialize message field [local_frontiers]
    // Serialize the length for message field [local_frontiers]
    bufferOffset = _serializer.uint32(obj.local_frontiers.length, buffer, bufferOffset);
    obj.local_frontiers.forEach((val) => {
      bufferOffset = CellCode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [global_frontiers]
    // Serialize the length for message field [global_frontiers]
    bufferOffset = _serializer.uint32(obj.global_frontiers.length, buffer, bufferOffset);
    obj.global_frontiers.forEach((val) => {
      bufferOffset = CellCode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [changed_cell_codes]
    // Serialize the length for message field [changed_cell_codes]
    bufferOffset = _serializer.uint32(obj.changed_cell_codes.length, buffer, bufferOffset);
    obj.changed_cell_codes.forEach((val) => {
      bufferOffset = CellCode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [known_cell_codes]
    // Serialize the length for message field [known_cell_codes]
    bufferOffset = _serializer.uint32(obj.known_cell_codes.length, buffer, bufferOffset);
    obj.known_cell_codes.forEach((val) => {
      bufferOffset = CellCode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [robot_base_frame_id]
    bufferOffset = _serializer.string(obj.robot_base_frame_id, buffer, bufferOffset);
    // Serialize message field [robot_height]
    bufferOffset = _serializer.float64(obj.robot_height, buffer, bufferOffset);
    // Serialize message field [robot_bottom]
    bufferOffset = _serializer.float64(obj.robot_bottom, buffer, bufferOffset);
    // Serialize message field [robot_radius]
    bufferOffset = _serializer.float64(obj.robot_radius, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float64(obj.max_range, buffer, bufferOffset);
    // Serialize message field [known_plane_cell_num]
    bufferOffset = _serializer.uint32(obj.known_plane_cell_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UfomapWithFrontiers
    let len;
    let data = new UfomapWithFrontiers(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ufomap]
    data.ufomap = ufomap_msgs.msg.UFOMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_frontiers]
    // Deserialize array length for message field [local_frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_frontiers[i] = CellCode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [global_frontiers]
    // Deserialize array length for message field [global_frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.global_frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.global_frontiers[i] = CellCode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [changed_cell_codes]
    // Deserialize array length for message field [changed_cell_codes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.changed_cell_codes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.changed_cell_codes[i] = CellCode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [known_cell_codes]
    // Deserialize array length for message field [known_cell_codes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.known_cell_codes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.known_cell_codes[i] = CellCode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_base_frame_id]
    data.robot_base_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_height]
    data.robot_height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_bottom]
    data.robot_bottom = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_radius]
    data.robot_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [known_plane_cell_num]
    data.known_plane_cell_num = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ufomap_msgs.msg.UFOMap.getMessageSize(object.ufomap);
    length += 12 * object.local_frontiers.length;
    length += 12 * object.global_frontiers.length;
    length += 12 * object.changed_cell_codes.length;
    length += 12 * object.known_cell_codes.length;
    length += _getByteLength(object.frame_id);
    length += _getByteLength(object.robot_base_frame_id);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_manager/UfomapWithFrontiers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22e13be68b8e1ef450cd96e270be998b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    ufomap_msgs/UFOMap  ufomap
    
    #geometry_msgs/Point[] local_frontiers_center
    #geometry_msgs/Point[] global_frontiers_center
    #
    #int32 frontiers_depth
    
    ufomap_manager/CellCode[] local_frontiers
    ufomap_manager/CellCode[] global_frontiers
    ufomap_manager/CellCode[] changed_cell_codes
    ufomap_manager/CellCode[] known_cell_codes
    
    # 构建ufomap时机器人的参数配置
    string frame_id
    string robot_base_frame_id
    float64 robot_height
    float64 robot_bottom
    float64 robot_radius
    float64 max_range
    
    uint32 known_plane_cell_num
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
    
    ================================================================================
    MSG: ufomap_msgs/UFOMap
    # A 3D map in binary format, as Octree
    ufomap_msgs/UFOMapMetaData info
    
    # Binary serialization of Octree, use conversions.h to read and write octrees
    int8[] data
    ================================================================================
    MSG: ufomap_msgs/UFOMapMetaData
    # File version used
    string version
    
    # Class id of the contained Octree
    string id
    
    # Resolution (in m) of the octree leaf nodes
    float64 resolution
    
    # Number of depth levels
    uint8 depth_levels
    
    # If data is compressed
    bool compressed
    
    # Size of data uncompressed
    int32 uncompressed_data_size
    
    # Bounding volume
    ufomap_msgs/BoundingVolume bounding_volume
    ================================================================================
    MSG: ufomap_msgs/BoundingVolume
    ufomap_msgs/AABB[] aabbs
    
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
    ================================================================================
    MSG: ufomap_manager/CellCode
    uint32 depth
    uint64 Code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UfomapWithFrontiers(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ufomap !== undefined) {
      resolved.ufomap = ufomap_msgs.msg.UFOMap.Resolve(msg.ufomap)
    }
    else {
      resolved.ufomap = new ufomap_msgs.msg.UFOMap()
    }

    if (msg.local_frontiers !== undefined) {
      resolved.local_frontiers = new Array(msg.local_frontiers.length);
      for (let i = 0; i < resolved.local_frontiers.length; ++i) {
        resolved.local_frontiers[i] = CellCode.Resolve(msg.local_frontiers[i]);
      }
    }
    else {
      resolved.local_frontiers = []
    }

    if (msg.global_frontiers !== undefined) {
      resolved.global_frontiers = new Array(msg.global_frontiers.length);
      for (let i = 0; i < resolved.global_frontiers.length; ++i) {
        resolved.global_frontiers[i] = CellCode.Resolve(msg.global_frontiers[i]);
      }
    }
    else {
      resolved.global_frontiers = []
    }

    if (msg.changed_cell_codes !== undefined) {
      resolved.changed_cell_codes = new Array(msg.changed_cell_codes.length);
      for (let i = 0; i < resolved.changed_cell_codes.length; ++i) {
        resolved.changed_cell_codes[i] = CellCode.Resolve(msg.changed_cell_codes[i]);
      }
    }
    else {
      resolved.changed_cell_codes = []
    }

    if (msg.known_cell_codes !== undefined) {
      resolved.known_cell_codes = new Array(msg.known_cell_codes.length);
      for (let i = 0; i < resolved.known_cell_codes.length; ++i) {
        resolved.known_cell_codes[i] = CellCode.Resolve(msg.known_cell_codes[i]);
      }
    }
    else {
      resolved.known_cell_codes = []
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.robot_base_frame_id !== undefined) {
      resolved.robot_base_frame_id = msg.robot_base_frame_id;
    }
    else {
      resolved.robot_base_frame_id = ''
    }

    if (msg.robot_height !== undefined) {
      resolved.robot_height = msg.robot_height;
    }
    else {
      resolved.robot_height = 0.0
    }

    if (msg.robot_bottom !== undefined) {
      resolved.robot_bottom = msg.robot_bottom;
    }
    else {
      resolved.robot_bottom = 0.0
    }

    if (msg.robot_radius !== undefined) {
      resolved.robot_radius = msg.robot_radius;
    }
    else {
      resolved.robot_radius = 0.0
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    if (msg.known_plane_cell_num !== undefined) {
      resolved.known_plane_cell_num = msg.known_plane_cell_num;
    }
    else {
      resolved.known_plane_cell_num = 0
    }

    return resolved;
    }
};

module.exports = UfomapWithFrontiers;
