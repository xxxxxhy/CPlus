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

class ClearVolumeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bounding_volume = null;
      this.depth = null;
    }
    else {
      if (initObj.hasOwnProperty('bounding_volume')) {
        this.bounding_volume = initObj.bounding_volume
      }
      else {
        this.bounding_volume = new ufomap_msgs.msg.BoundingVolume();
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClearVolumeRequest
    // Serialize message field [bounding_volume]
    bufferOffset = ufomap_msgs.msg.BoundingVolume.serialize(obj.bounding_volume, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.uint8(obj.depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClearVolumeRequest
    let len;
    let data = new ClearVolumeRequest(null);
    // Deserialize message field [bounding_volume]
    data.bounding_volume = ufomap_msgs.msg.BoundingVolume.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ufomap_msgs.msg.BoundingVolume.getMessageSize(object.bounding_volume);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/ClearVolumeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '734d38dace68cba7c41f4b7c9852f555';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Clear a part of the map, specified by a bounding volume. 
    # Sets all voxels inside the bounding volume to ~clamping_thres_min/free space.
    
    # The bounding volume
    ufomap_msgs/BoundingVolume bounding_volume
    # The depth at which it should be cleared
    uint8 depth
    
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
    const resolved = new ClearVolumeRequest(null);
    if (msg.bounding_volume !== undefined) {
      resolved.bounding_volume = ufomap_msgs.msg.BoundingVolume.Resolve(msg.bounding_volume)
    }
    else {
      resolved.bounding_volume = new ufomap_msgs.msg.BoundingVolume()
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0
    }

    return resolved;
    }
};

class ClearVolumeResponse {
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
    // Serializes a message object of type ClearVolumeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClearVolumeResponse
    let len;
    let data = new ClearVolumeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/ClearVolumeResponse';
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
    const resolved = new ClearVolumeResponse(null);
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
  Request: ClearVolumeRequest,
  Response: ClearVolumeResponse,
  md5sum() { return 'd2fd0d5791e4eff60d2c257423ccf8ba'; },
  datatype() { return 'ufomap_srvs/ClearVolume'; }
};
