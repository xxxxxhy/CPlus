// Auto-generated. Do not edit!

// (in-package planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let ufomap_manager = _finder('ufomap_manager');

//-----------------------------------------------------------

class ViewpointsWithFrontiers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.view_point = null;
      this.frontiers = null;
    }
    else {
      if (initObj.hasOwnProperty('view_point')) {
        this.view_point = initObj.view_point
      }
      else {
        this.view_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('frontiers')) {
        this.frontiers = initObj.frontiers
      }
      else {
        this.frontiers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ViewpointsWithFrontiers
    // Serialize message field [view_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.view_point, buffer, bufferOffset);
    // Serialize message field [frontiers]
    // Serialize the length for message field [frontiers]
    bufferOffset = _serializer.uint32(obj.frontiers.length, buffer, bufferOffset);
    obj.frontiers.forEach((val) => {
      bufferOffset = ufomap_manager.msg.CellCode.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ViewpointsWithFrontiers
    let len;
    let data = new ViewpointsWithFrontiers(null);
    // Deserialize message field [view_point]
    data.view_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [frontiers]
    // Deserialize array length for message field [frontiers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frontiers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frontiers[i] = ufomap_manager.msg.CellCode.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.frontiers.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner/ViewpointsWithFrontiers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52c4c3a872cbd5edd9e44ac6b909d63c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Point view_point
    ufomap_manager/CellCode[] frontiers
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new ViewpointsWithFrontiers(null);
    if (msg.view_point !== undefined) {
      resolved.view_point = geometry_msgs.msg.Point.Resolve(msg.view_point)
    }
    else {
      resolved.view_point = new geometry_msgs.msg.Point()
    }

    if (msg.frontiers !== undefined) {
      resolved.frontiers = new Array(msg.frontiers.length);
      for (let i = 0; i < resolved.frontiers.length; ++i) {
        resolved.frontiers[i] = ufomap_manager.msg.CellCode.Resolve(msg.frontiers[i]);
      }
    }
    else {
      resolved.frontiers = []
    }

    return resolved;
    }
};

module.exports = ViewpointsWithFrontiers;
