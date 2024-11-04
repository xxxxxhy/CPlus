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

class Ray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.origin = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new Point();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ray
    // Serialize message field [origin]
    bufferOffset = Point.serialize(obj.origin, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = Point.serialize(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ray
    let len;
    let data = new Ray(null);
    // Deserialize message field [origin]
    data.origin = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_msgs/Ray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '872bd28a8ce427a470e8f663e7effa11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ufomap_msgs/Point origin
    
    ufomap_msgs/Point direction
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
    const resolved = new Ray(null);
    if (msg.origin !== undefined) {
      resolved.origin = Point.Resolve(msg.origin)
    }
    else {
      resolved.origin = new Point()
    }

    if (msg.direction !== undefined) {
      resolved.direction = Point.Resolve(msg.direction)
    }
    else {
      resolved.direction = new Point()
    }

    return resolved;
    }
};

module.exports = Ray;
