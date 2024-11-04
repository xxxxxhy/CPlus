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

class LineSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new Point();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineSegment
    // Serialize message field [start]
    bufferOffset = Point.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = Point.serialize(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineSegment
    let len;
    let data = new LineSegment(null);
    // Deserialize message field [start]
    data.start = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_msgs/LineSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad6f4eea34a193d38008f1d4053cce66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ufomap_msgs/Point start
    
    ufomap_msgs/Point end
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
    const resolved = new LineSegment(null);
    if (msg.start !== undefined) {
      resolved.start = Point.Resolve(msg.start)
    }
    else {
      resolved.start = new Point()
    }

    if (msg.end !== undefined) {
      resolved.end = Point.Resolve(msg.end)
    }
    else {
      resolved.end = new Point()
    }

    return resolved;
    }
};

module.exports = LineSegment;
