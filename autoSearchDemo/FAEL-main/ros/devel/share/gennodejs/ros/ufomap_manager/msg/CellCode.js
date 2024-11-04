// Auto-generated. Do not edit!

// (in-package ufomap_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CellCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.depth = null;
      this.Code = null;
    }
    else {
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0;
      }
      if (initObj.hasOwnProperty('Code')) {
        this.Code = initObj.Code
      }
      else {
        this.Code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CellCode
    // Serialize message field [depth]
    bufferOffset = _serializer.uint32(obj.depth, buffer, bufferOffset);
    // Serialize message field [Code]
    bufferOffset = _serializer.uint64(obj.Code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CellCode
    let len;
    let data = new CellCode(null);
    // Deserialize message field [depth]
    data.depth = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Code]
    data.Code = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_manager/CellCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b94fd8468f8b44ebfb1a755ca2d3ecbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 depth
    uint64 Code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CellCode(null);
    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0
    }

    if (msg.Code !== undefined) {
      resolved.Code = msg.Code;
    }
    else {
      resolved.Code = 0
    }

    return resolved;
    }
};

module.exports = CellCode;
