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

class GetMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.depth = null;
      this.compress = null;
      this.bounding_volume = null;
    }
    else {
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
      if (initObj.hasOwnProperty('bounding_volume')) {
        this.bounding_volume = initObj.bounding_volume
      }
      else {
        this.bounding_volume = new ufomap_msgs.msg.BoundingVolume();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapRequest
    // Serialize message field [depth]
    bufferOffset = _serializer.uint8(obj.depth, buffer, bufferOffset);
    // Serialize message field [compress]
    bufferOffset = _serializer.bool(obj.compress, buffer, bufferOffset);
    // Serialize message field [bounding_volume]
    bufferOffset = ufomap_msgs.msg.BoundingVolume.serialize(obj.bounding_volume, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapRequest
    let len;
    let data = new GetMapRequest(null);
    // Deserialize message field [depth]
    data.depth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compress]
    data.compress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bounding_volume]
    data.bounding_volume = ufomap_msgs.msg.BoundingVolume.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ufomap_msgs.msg.BoundingVolume.getMessageSize(object.bounding_volume);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/GetMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '283deba7c9e328b954a502b944947b13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get the complete map at a specified depth
    
    # The depth of the map to return
    uint8 depth
    # If the message should be compressed
    bool compress
    # Bounding volume of which part of the map should be returned
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
    const resolved = new GetMapRequest(null);
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

    if (msg.bounding_volume !== undefined) {
      resolved.bounding_volume = ufomap_msgs.msg.BoundingVolume.Resolve(msg.bounding_volume)
    }
    else {
      resolved.bounding_volume = new ufomap_msgs.msg.BoundingVolume()
    }

    return resolved;
    }
};

class GetMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new ufomap_msgs.msg.UFOMap();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = ufomap_msgs.msg.UFOMap.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapResponse
    let len;
    let data = new GetMapResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = ufomap_msgs.msg.UFOMap.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ufomap_msgs.msg.UFOMap.getMessageSize(object.map);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/GetMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5523f510c9f1d0087bc32c1fd47d10b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # If it was successful
    bool success
    # The map to be returned
    ufomap_msgs/UFOMap map
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.map !== undefined) {
      resolved.map = ufomap_msgs.msg.UFOMap.Resolve(msg.map)
    }
    else {
      resolved.map = new ufomap_msgs.msg.UFOMap()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapRequest,
  Response: GetMapResponse,
  md5sum() { return '47cd0cd4e998ca314e6ccaf9f3b259df'; },
  datatype() { return 'ufomap_srvs/GetMap'; }
};
