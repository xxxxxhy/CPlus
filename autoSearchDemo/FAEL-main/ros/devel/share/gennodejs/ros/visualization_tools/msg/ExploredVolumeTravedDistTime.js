// Auto-generated. Do not edit!

// (in-package visualization_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ExploredVolumeTravedDistTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.exploredVolume = null;
      this.travedDist = null;
      this.timeConsumed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('exploredVolume')) {
        this.exploredVolume = initObj.exploredVolume
      }
      else {
        this.exploredVolume = 0.0;
      }
      if (initObj.hasOwnProperty('travedDist')) {
        this.travedDist = initObj.travedDist
      }
      else {
        this.travedDist = 0.0;
      }
      if (initObj.hasOwnProperty('timeConsumed')) {
        this.timeConsumed = initObj.timeConsumed
      }
      else {
        this.timeConsumed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExploredVolumeTravedDistTime
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [exploredVolume]
    bufferOffset = _serializer.float64(obj.exploredVolume, buffer, bufferOffset);
    // Serialize message field [travedDist]
    bufferOffset = _serializer.float64(obj.travedDist, buffer, bufferOffset);
    // Serialize message field [timeConsumed]
    bufferOffset = _serializer.float64(obj.timeConsumed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExploredVolumeTravedDistTime
    let len;
    let data = new ExploredVolumeTravedDistTime(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [exploredVolume]
    data.exploredVolume = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [travedDist]
    data.travedDist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timeConsumed]
    data.timeConsumed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization_tools/ExploredVolumeTravedDistTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ade7f32f6c2af67911fc113df95d017a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 exploredVolume
    float64 travedDist
    float64 timeConsumed
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExploredVolumeTravedDistTime(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.exploredVolume !== undefined) {
      resolved.exploredVolume = msg.exploredVolume;
    }
    else {
      resolved.exploredVolume = 0.0
    }

    if (msg.travedDist !== undefined) {
      resolved.travedDist = msg.travedDist;
    }
    else {
      resolved.travedDist = 0.0
    }

    if (msg.timeConsumed !== undefined) {
      resolved.timeConsumed = msg.timeConsumed;
    }
    else {
      resolved.timeConsumed = 0.0
    }

    return resolved;
    }
};

module.exports = ExploredVolumeTravedDistTime;
