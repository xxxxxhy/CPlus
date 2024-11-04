// Auto-generated. Do not edit!

// (in-package ufomap_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ResetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_resolution = null;
      this.new_depth_levels = null;
    }
    else {
      if (initObj.hasOwnProperty('new_resolution')) {
        this.new_resolution = initObj.new_resolution
      }
      else {
        this.new_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('new_depth_levels')) {
        this.new_depth_levels = initObj.new_depth_levels
      }
      else {
        this.new_depth_levels = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetRequest
    // Serialize message field [new_resolution]
    bufferOffset = _serializer.float64(obj.new_resolution, buffer, bufferOffset);
    // Serialize message field [new_depth_levels]
    bufferOffset = _serializer.uint8(obj.new_depth_levels, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetRequest
    let len;
    let data = new ResetRequest(null);
    // Deserialize message field [new_resolution]
    data.new_resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [new_depth_levels]
    data.new_depth_levels = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/ResetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17d290cc8fb3818820766caab01dd3f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Resets the complete map.
    
    # The resolution of the new map
    float64 new_resolution
    # The number of depth levels in the new map
    uint8 new_depth_levels
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetRequest(null);
    if (msg.new_resolution !== undefined) {
      resolved.new_resolution = msg.new_resolution;
    }
    else {
      resolved.new_resolution = 0.0
    }

    if (msg.new_depth_levels !== undefined) {
      resolved.new_depth_levels = msg.new_depth_levels;
    }
    else {
      resolved.new_depth_levels = 0
    }

    return resolved;
    }
};

class ResetResponse {
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
    // Serializes a message object of type ResetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetResponse
    let len;
    let data = new ResetResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ufomap_srvs/ResetResponse';
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
    const resolved = new ResetResponse(null);
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
  Request: ResetRequest,
  Response: ResetResponse,
  md5sum() { return '98aeec308656a857be8d59d1fb3f81a9'; },
  datatype() { return 'ufomap_srvs/Reset'; }
};
