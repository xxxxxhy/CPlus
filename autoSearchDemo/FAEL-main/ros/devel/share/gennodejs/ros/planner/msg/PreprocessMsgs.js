// Auto-generated. Do not edit!

// (in-package planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ViewpointsWithFrontiers = require('./ViewpointsWithFrontiers.js');
let RoadMapMsg = require('./RoadMapMsg.js');
let std_msgs = _finder('std_msgs');
let ufomap_manager = _finder('ufomap_manager');

//-----------------------------------------------------------

class PreprocessMsgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ufomap_with_frontiers = null;
      this.viewpoint_frontiers_set = null;
      this.road_map_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ufomap_with_frontiers')) {
        this.ufomap_with_frontiers = initObj.ufomap_with_frontiers
      }
      else {
        this.ufomap_with_frontiers = new ufomap_manager.msg.UfomapWithFrontiers();
      }
      if (initObj.hasOwnProperty('viewpoint_frontiers_set')) {
        this.viewpoint_frontiers_set = initObj.viewpoint_frontiers_set
      }
      else {
        this.viewpoint_frontiers_set = [];
      }
      if (initObj.hasOwnProperty('road_map_msg')) {
        this.road_map_msg = initObj.road_map_msg
      }
      else {
        this.road_map_msg = new RoadMapMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PreprocessMsgs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ufomap_with_frontiers]
    bufferOffset = ufomap_manager.msg.UfomapWithFrontiers.serialize(obj.ufomap_with_frontiers, buffer, bufferOffset);
    // Serialize message field [viewpoint_frontiers_set]
    // Serialize the length for message field [viewpoint_frontiers_set]
    bufferOffset = _serializer.uint32(obj.viewpoint_frontiers_set.length, buffer, bufferOffset);
    obj.viewpoint_frontiers_set.forEach((val) => {
      bufferOffset = ViewpointsWithFrontiers.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_map_msg]
    bufferOffset = RoadMapMsg.serialize(obj.road_map_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PreprocessMsgs
    let len;
    let data = new PreprocessMsgs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ufomap_with_frontiers]
    data.ufomap_with_frontiers = ufomap_manager.msg.UfomapWithFrontiers.deserialize(buffer, bufferOffset);
    // Deserialize message field [viewpoint_frontiers_set]
    // Deserialize array length for message field [viewpoint_frontiers_set]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.viewpoint_frontiers_set = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.viewpoint_frontiers_set[i] = ViewpointsWithFrontiers.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_map_msg]
    data.road_map_msg = RoadMapMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ufomap_manager.msg.UfomapWithFrontiers.getMessageSize(object.ufomap_with_frontiers);
    object.viewpoint_frontiers_set.forEach((val) => {
      length += ViewpointsWithFrontiers.getMessageSize(val);
    });
    length += RoadMapMsg.getMessageSize(object.road_map_msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner/PreprocessMsgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73bcf5cb2848fb40ea7e49ae1282eac0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    
    ufomap_manager/UfomapWithFrontiers ufomap_with_frontiers
    
    ViewpointsWithFrontiers[] viewpoint_frontiers_set
    
    RoadMapMsg road_map_msg
    
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
    MSG: ufomap_manager/UfomapWithFrontiers
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
    
    ================================================================================
    MSG: planner/ViewpointsWithFrontiers
    
    geometry_msgs/Point view_point
    ufomap_manager/CellCode[] frontiers
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: planner/RoadMapMsg
    
    IdPointPair[] id_point_pair_list
    EdgePair[] edge_pair_list
    ================================================================================
    MSG: planner/IdPointPair
    int32 id
    geometry_msgs/Point point
    ================================================================================
    MSG: planner/EdgePair
    
    int32 edge_id
    IdPointPair begin_point
    IdPointPair end_point
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PreprocessMsgs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ufomap_with_frontiers !== undefined) {
      resolved.ufomap_with_frontiers = ufomap_manager.msg.UfomapWithFrontiers.Resolve(msg.ufomap_with_frontiers)
    }
    else {
      resolved.ufomap_with_frontiers = new ufomap_manager.msg.UfomapWithFrontiers()
    }

    if (msg.viewpoint_frontiers_set !== undefined) {
      resolved.viewpoint_frontiers_set = new Array(msg.viewpoint_frontiers_set.length);
      for (let i = 0; i < resolved.viewpoint_frontiers_set.length; ++i) {
        resolved.viewpoint_frontiers_set[i] = ViewpointsWithFrontiers.Resolve(msg.viewpoint_frontiers_set[i]);
      }
    }
    else {
      resolved.viewpoint_frontiers_set = []
    }

    if (msg.road_map_msg !== undefined) {
      resolved.road_map_msg = RoadMapMsg.Resolve(msg.road_map_msg)
    }
    else {
      resolved.road_map_msg = new RoadMapMsg()
    }

    return resolved;
    }
};

module.exports = PreprocessMsgs;
