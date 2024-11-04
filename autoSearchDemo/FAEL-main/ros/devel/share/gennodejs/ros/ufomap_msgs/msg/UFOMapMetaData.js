// Auto-generated. Do not edit!

// (in-package ufomap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingVolume = require('./BoundingVolume.js');

//-----------------------------------------------------------

class UFOMapMetaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.id = null;
      this.resolution = null;
      this.depth_levels = null;
      this.compressed = null;
      this.uncompressed_data_size = null;
      this.bounding_volume = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('depth_levels')) {
        this.depth_levels = initObj.depth_levels
      }
      else {
        this.depth_levels = 0;
      }
      if (initObj.hasOwnProperty('compressed')) {
        this.compressed = initObj.compressed
      }
      else {
        this.compressed = false;
      }
      if (initObj.hasOwnProperty('uncompressed_data_size')) {
        this.uncompressed_data_size = initObj.uncompressed_data_size
      }
      else {
        this.uncompressed_data_size = 0;
      }
      if (initObj.hasOwnProperty('bounding_volume')) {
        this.bounding_volume = initObj.bounding_volume
      }
      else {
        this.bounding_volume = new BoundingVolume();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UFOMapMetaData
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float64(obj.resolution, buffer, bufferOffset);
    // Serialize message field [depth_levels]
    bufferOffset = _serializer.uint8(obj.depth_levels, buffer, bufferOffset);
    // Serialize message field [compressed]
    bufferOffset = _serializer.bool(obj.compressed, buffer, bufferOffset);
    // Serialize message field [uncompressed_data_size]
    bufferOffset = _serializer.int32(obj.uncompressed_data_size, buffer, bufferOffset);
    // Serialize message field [bounding_volume]
    bufferOffset = BoundingVolume.serialize(obj.bounding_volume, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UFOMapMetaData
    let len;
    let data = new UFOMapMetaData(null);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth_levels]
    data.depth_levels = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compressed]
    data.compressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [uncompressed_data_size]
    data.uncompressed_data_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bounding_volume]
    data.bounding_volume = BoundingVolume.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.version);
    length += _getByteLength(object.id);
    length += BoundingVolume.getMessageSize(object.bounding_volume);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_msgs/UFOMapMetaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3469fb65109a0fe2f8055afe98d145fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UFOMapMetaData(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.depth_levels !== undefined) {
      resolved.depth_levels = msg.depth_levels;
    }
    else {
      resolved.depth_levels = 0
    }

    if (msg.compressed !== undefined) {
      resolved.compressed = msg.compressed;
    }
    else {
      resolved.compressed = false
    }

    if (msg.uncompressed_data_size !== undefined) {
      resolved.uncompressed_data_size = msg.uncompressed_data_size;
    }
    else {
      resolved.uncompressed_data_size = 0
    }

    if (msg.bounding_volume !== undefined) {
      resolved.bounding_volume = BoundingVolume.Resolve(msg.bounding_volume)
    }
    else {
      resolved.bounding_volume = new BoundingVolume()
    }

    return resolved;
    }
};

module.exports = UFOMapMetaData;
