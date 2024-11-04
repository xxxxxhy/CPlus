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
let EdgePair = require('./EdgePair.js');

//-----------------------------------------------------------

class RoadMapMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_point_pair_list = null;
      this.edge_pair_list = null;
    }
    else {
      if (initObj.hasOwnProperty('id_point_pair_list')) {
        this.id_point_pair_list = initObj.id_point_pair_list
      }
      else {
        this.id_point_pair_list = [];
      }
      if (initObj.hasOwnProperty('edge_pair_list')) {
        this.edge_pair_list = initObj.edge_pair_list
      }
      else {
        this.edge_pair_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadMapMsg
    // Serialize message field [id_point_pair_list]
    // Serialize the length for message field [id_point_pair_list]
    bufferOffset = _serializer.uint32(obj.id_point_pair_list.length, buffer, bufferOffset);
    obj.id_point_pair_list.forEach((val) => {
      bufferOffset = IdPointPair.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [edge_pair_list]
    // Serialize the length for message field [edge_pair_list]
    bufferOffset = _serializer.uint32(obj.edge_pair_list.length, buffer, bufferOffset);
    obj.edge_pair_list.forEach((val) => {
      bufferOffset = EdgePair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadMapMsg
    let len;
    let data = new RoadMapMsg(null);
    // Deserialize message field [id_point_pair_list]
    // Deserialize array length for message field [id_point_pair_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.id_point_pair_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.id_point_pair_list[i] = IdPointPair.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [edge_pair_list]
    // Deserialize array length for message field [edge_pair_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.edge_pair_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.edge_pair_list[i] = EdgePair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.id_point_pair_list.length;
    length += 60 * object.edge_pair_list.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner/RoadMapMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29d560d0f11813d6df50b9dbb4c10ec2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    IdPointPair[] id_point_pair_list
    EdgePair[] edge_pair_list
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
    
    ================================================================================
    MSG: planner/EdgePair
    
    int32 edge_id
    IdPointPair begin_point
    IdPointPair end_point
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadMapMsg(null);
    if (msg.id_point_pair_list !== undefined) {
      resolved.id_point_pair_list = new Array(msg.id_point_pair_list.length);
      for (let i = 0; i < resolved.id_point_pair_list.length; ++i) {
        resolved.id_point_pair_list[i] = IdPointPair.Resolve(msg.id_point_pair_list[i]);
      }
    }
    else {
      resolved.id_point_pair_list = []
    }

    if (msg.edge_pair_list !== undefined) {
      resolved.edge_pair_list = new Array(msg.edge_pair_list.length);
      for (let i = 0; i < resolved.edge_pair_list.length; ++i) {
        resolved.edge_pair_list[i] = EdgePair.Resolve(msg.edge_pair_list[i]);
      }
    }
    else {
      resolved.edge_pair_list = []
    }

    return resolved;
    }
};

module.exports = RoadMapMsg;
