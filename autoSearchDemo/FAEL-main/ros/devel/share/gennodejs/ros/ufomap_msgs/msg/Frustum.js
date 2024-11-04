// Auto-generated. Do not edit!

// (in-package ufomap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Plane = require('./Plane.js');

//-----------------------------------------------------------

class Frustum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planes = null;
    }
    else {
      if (initObj.hasOwnProperty('planes')) {
        this.planes = initObj.planes
      }
      else {
        this.planes = new Array(6).fill(new Plane());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frustum
    // Check that the constant length array field [planes] has the right length
    if (obj.planes.length !== 6) {
      throw new Error('Unable to serialize array field planes - length must be 6')
    }
    // Serialize message field [planes]
    obj.planes.forEach((val) => {
      bufferOffset = Plane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frustum
    let len;
    let data = new Frustum(null);
    // Deserialize message field [planes]
    len = 6;
    data.planes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.planes[i] = Plane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_msgs/Frustum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '252aef435fbaa9c4118f62666383e936';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ufomap_msgs/Plane[6] planes
    ================================================================================
    MSG: ufomap_msgs/Plane
    ufomap_msgs/Point normal
    
    float64 distance
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
    const resolved = new Frustum(null);
    if (msg.planes !== undefined) {
      resolved.planes = new Array(6)
      for (let i = 0; i < resolved.planes.length; ++i) {
        if (msg.planes.length > i) {
          resolved.planes[i] = Plane.Resolve(msg.planes[i]);
        }
        else {
          resolved.planes[i] = new Plane();
        }
      }
    }
    else {
      resolved.planes = new Array(6).fill(new Plane())
    }

    return resolved;
    }
};

module.exports = Frustum;
