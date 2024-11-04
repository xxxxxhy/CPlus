// Auto-generated. Do not edit!

// (in-package planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IdPointPair = require('./IdPointPair.js');

//-----------------------------------------------------------

class EdgePair {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.edge_id = null;
      this.begin_point = null;
      this.end_point = null;
    }
    else {
      if (initObj.hasOwnProperty('edge_id')) {
        this.edge_id = initObj.edge_id
      }
      else {
        this.edge_id = 0;
      }
      if (initObj.hasOwnProperty('begin_point')) {
        this.begin_point = initObj.begin_point
      }
      else {
        this.begin_point = new IdPointPair();
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = new IdPointPair();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EdgePair
    // Serialize message field [edge_id]
    bufferOffset = _serializer.int32(obj.edge_id, buffer, bufferOffset);
    // Serialize message field [begin_point]
    bufferOffset = IdPointPair.serialize(obj.begin_point, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = IdPointPair.serialize(obj.end_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EdgePair
    let len;
    let data = new EdgePair(null);
    // Deserialize message field [edge_id]
    data.edge_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [begin_point]
    data.begin_point = IdPointPair.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = IdPointPair.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner/EdgePair';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7f192530926af30a2bd0e4f00396d0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 edge_id
    IdPointPair begin_point
    IdPointPair end_point
    ================================================================================
    MSG: planner/IdPointPair
    int32 id
    geometry_msgs/Point point
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new EdgePair(null);
    if (msg.edge_id !== undefined) {
      resolved.edge_id = msg.edge_id;
    }
    else {
      resolved.edge_id = 0
    }

    if (msg.begin_point !== undefined) {
      resolved.begin_point = IdPointPair.Resolve(msg.begin_point)
    }
    else {
      resolved.begin_point = new IdPointPair()
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = IdPointPair.Resolve(msg.end_point)
    }
    else {
      resolved.end_point = new IdPointPair()
    }

    return resolved;
    }
};

module.exports = EdgePair;
