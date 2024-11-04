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

class IterationTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_time = null;
      this.iterationTime = null;
      this.timeConsumed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_time')) {
        this.current_time = initObj.current_time
      }
      else {
        this.current_time = 0.0;
      }
      if (initObj.hasOwnProperty('iterationTime')) {
        this.iterationTime = initObj.iterationTime
      }
      else {
        this.iterationTime = 0.0;
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
    // Serializes a message object of type IterationTime
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_time]
    bufferOffset = _serializer.float64(obj.current_time, buffer, bufferOffset);
    // Serialize message field [iterationTime]
    bufferOffset = _serializer.float64(obj.iterationTime, buffer, bufferOffset);
    // Serialize message field [timeConsumed]
    bufferOffset = _serializer.float64(obj.timeConsumed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IterationTime
    let len;
    let data = new IterationTime(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_time]
    data.current_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iterationTime]
    data.iterationTime = _deserializer.float64(buffer, bufferOffset);
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
    return 'visualization_tools/IterationTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '158c4276d8a115458c5e1a0e1466f4ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    float64 current_time
    float64 iterationTime
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
    const resolved = new IterationTime(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_time !== undefined) {
      resolved.current_time = msg.current_time;
    }
    else {
      resolved.current_time = 0.0
    }

    if (msg.iterationTime !== undefined) {
      resolved.iterationTime = msg.iterationTime;
    }
    else {
      resolved.iterationTime = 0.0
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

module.exports = IterationTime;
