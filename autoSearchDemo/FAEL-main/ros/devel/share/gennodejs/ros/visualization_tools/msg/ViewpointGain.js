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

class ViewpointGain {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.viewpoints_ids = null;
      this.frontiers_gains = null;
      this.unmapped_gains = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('viewpoints_ids')) {
        this.viewpoints_ids = initObj.viewpoints_ids
      }
      else {
        this.viewpoints_ids = [];
      }
      if (initObj.hasOwnProperty('frontiers_gains')) {
        this.frontiers_gains = initObj.frontiers_gains
      }
      else {
        this.frontiers_gains = [];
      }
      if (initObj.hasOwnProperty('unmapped_gains')) {
        this.unmapped_gains = initObj.unmapped_gains
      }
      else {
        this.unmapped_gains = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ViewpointGain
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [viewpoints_ids]
    bufferOffset = _arraySerializer.int32(obj.viewpoints_ids, buffer, bufferOffset, null);
    // Serialize message field [frontiers_gains]
    bufferOffset = _arraySerializer.float64(obj.frontiers_gains, buffer, bufferOffset, null);
    // Serialize message field [unmapped_gains]
    bufferOffset = _arraySerializer.float64(obj.unmapped_gains, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ViewpointGain
    let len;
    let data = new ViewpointGain(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [viewpoints_ids]
    data.viewpoints_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [frontiers_gains]
    data.frontiers_gains = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [unmapped_gains]
    data.unmapped_gains = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.viewpoints_ids.length;
    length += 8 * object.frontiers_gains.length;
    length += 8 * object.unmapped_gains.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'visualization_tools/ViewpointGain';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a86d71165359171b73a9d35ab987e6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32[] viewpoints_ids
    float64[] frontiers_gains
    float64[] unmapped_gains
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
    const resolved = new ViewpointGain(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.viewpoints_ids !== undefined) {
      resolved.viewpoints_ids = msg.viewpoints_ids;
    }
    else {
      resolved.viewpoints_ids = []
    }

    if (msg.frontiers_gains !== undefined) {
      resolved.frontiers_gains = msg.frontiers_gains;
    }
    else {
      resolved.frontiers_gains = []
    }

    if (msg.unmapped_gains !== undefined) {
      resolved.unmapped_gains = msg.unmapped_gains;
    }
    else {
      resolved.unmapped_gains = []
    }

    return resolved;
    }
};

module.exports = ViewpointGain;
