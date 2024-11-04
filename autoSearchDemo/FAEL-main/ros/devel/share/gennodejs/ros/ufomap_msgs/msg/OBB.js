// Auto-generated. Do not edit!

// (in-package ufomap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');

//-----------------------------------------------------------

class OBB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.half_size = null;
      this.rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new Point();
      }
      if (initObj.hasOwnProperty('half_size')) {
        this.half_size = initObj.half_size
      }
      else {
        this.half_size = new Point();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OBB
    // Serialize message field [center]
    bufferOffset = Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [half_size]
    bufferOffset = Point.serialize(obj.half_size, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = Point.serialize(obj.rotation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OBB
    let len;
    let data = new OBB(null);
    // Deserialize message field [center]
    data.center = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [half_size]
    data.half_size = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_msgs/OBB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e931b8e26c2b1c2b5808b3eacdf69e3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ufomap_msgs/Point center
    
    ufomap_msgs/Point half_size
    
    ufomap_msgs/Point rotation
    ================================================================================
    MSG: ufomap_msgs/Point
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OBB(null);
    if (msg.center !== undefined) {
      resolved.center = Point.Resolve(msg.center)
    }
    else {
      resolved.center = new Point()
    }

    if (msg.half_size !== undefined) {
      resolved.half_size = Point.Resolve(msg.half_size)
    }
    else {
      resolved.half_size = new Point()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = Point.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new Point()
    }

    return resolved;
    }
};

module.exports = OBB;
