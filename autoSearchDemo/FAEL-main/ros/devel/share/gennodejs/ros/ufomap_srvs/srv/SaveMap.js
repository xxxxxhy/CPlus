// Auto-generated. Do not edit!

// (in-package ufomap_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ufomap_msgs = _finder('ufomap_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filename = null;
      this.depth = null;
      this.compress = null;
      this.compression_level = null;
      this.bounding_volume = null;
    }
    else {
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0;
      }
      if (initObj.hasOwnProperty('compress')) {
        this.compress = initObj.compress
      }
      else {
        this.compress = false;
      }
      if (initObj.hasOwnProperty('compression_level')) {
        this.compression_level = initObj.compression_level
      }
      else {
        this.compression_level = 0;
      }
      if (initObj.hasOwnProperty('bounding_volume')) {
        this.bounding_volume = initObj.bounding_volume
      }
      else {
        this.bounding_volume = new ufomap_msgs.msg.BoundingVolume();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapRequest
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.uint8(obj.depth, buffer, bufferOffset);
    // Serialize message field [compress]
    bufferOffset = _serializer.bool(obj.compress, buffer, bufferOffset);
    // Serialize message field [compression_level]
    bufferOffset = _serializer.int32(obj.compression_level, buffer, bufferOffset);
    // Serialize message field [bounding_volume]
    bufferOffset = ufomap_msgs.msg.BoundingVolume.serialize(obj.bounding_volume, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapRequest
    let len;
    let data = new SaveMapRequest(null);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compress]
    data.compress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [compression_level]
    data.compression_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bounding_volume]
    data.bounding_volume = ufomap_msgs.msg.BoundingVolume.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    length += ufomap_msgs.msg.BoundingVolume.getMessageSize(object.bounding_volume);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/SaveMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9640eaf6c56407ea04c1bba1685c8ded';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Save the map to file
    
    # Name of the file
    string filename
    # The depth of the map to save
    uint8 depth
    # If the file should be compressed
    bool compress
    # Compression level (higher number equals more compressed)
    int32 compression_level
    # Bounding volume of which part of the map should be saved
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
    const resolved = new SaveMapRequest(null);
    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0
    }

    if (msg.compress !== undefined) {
      resolved.compress = msg.compress;
    }
    else {
      resolved.compress = false
    }

    if (msg.compression_level !== undefined) {
      resolved.compression_level = msg.compression_level;
    }
    else {
      resolved.compression_level = 0
    }

    if (msg.bounding_volume !== undefined) {
      resolved.bounding_volume = ufomap_msgs.msg.BoundingVolume.Resolve(msg.bounding_volume)
    }
    else {
      resolved.bounding_volume = new ufomap_msgs.msg.BoundingVolume()
    }

    return resolved;
    }
};

class SaveMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapResponse
    let len;
    let data = new SaveMapResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/SaveMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # If it was successful
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMapResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SaveMapRequest,
  Response: SaveMapResponse,
  md5sum() { return 'd0fd03b00c5e25ad1ec5e95dc82eecdd'; },
  datatype() { return 'ufomap_srvs/SaveMap'; }
};
