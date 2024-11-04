// Auto-generated. Do not edit!

// (in-package control_planner_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlannerMsgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_iteration_id = null;
      this.current_goal_id = null;
      this.is_current_goal_scanned = null;
      this.is_exploration_finished = null;
    }
    else {
      if (initObj.hasOwnProperty('current_iteration_id')) {
        this.current_iteration_id = initObj.current_iteration_id
      }
      else {
        this.current_iteration_id = 0;
      }
      if (initObj.hasOwnProperty('current_goal_id')) {
        this.current_goal_id = initObj.current_goal_id
      }
      else {
        this.current_goal_id = 0;
      }
      if (initObj.hasOwnProperty('is_current_goal_scanned')) {
        this.is_current_goal_scanned = initObj.is_current_goal_scanned
      }
      else {
        this.is_current_goal_scanned = false;
      }
      if (initObj.hasOwnProperty('is_exploration_finished')) {
        this.is_exploration_finished = initObj.is_exploration_finished
      }
      else {
        this.is_exploration_finished = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerMsgs
    // Serialize message field [current_iteration_id]
    bufferOffset = _serializer.int32(obj.current_iteration_id, buffer, bufferOffset);
    // Serialize message field [current_goal_id]
    bufferOffset = _serializer.int32(obj.current_goal_id, buffer, bufferOffset);
    // Serialize message field [is_current_goal_scanned]
    bufferOffset = _serializer.bool(obj.is_current_goal_scanned, buffer, bufferOffset);
    // Serialize message field [is_exploration_finished]
    bufferOffset = _serializer.bool(obj.is_exploration_finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerMsgs
    let len;
    let data = new PlannerMsgs(null);
    // Deserialize message field [current_iteration_id]
    data.current_iteration_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_goal_id]
    data.current_goal_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_current_goal_scanned]
    data.is_current_goal_scanned = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_exploration_finished]
    data.is_exploration_finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_planner_interface/PlannerMsgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d4c2f6dbcc43449d62d74babfc48846';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 current_iteration_id
    int32 current_goal_id   
    bool is_current_goal_scanned
    bool is_exploration_finished
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerMsgs(null);
    if (msg.current_iteration_id !== undefined) {
      resolved.current_iteration_id = msg.current_iteration_id;
    }
    else {
      resolved.current_iteration_id = 0
    }

    if (msg.current_goal_id !== undefined) {
      resolved.current_goal_id = msg.current_goal_id;
    }
    else {
      resolved.current_goal_id = 0
    }

    if (msg.is_current_goal_scanned !== undefined) {
      resolved.is_current_goal_scanned = msg.is_current_goal_scanned;
    }
    else {
      resolved.is_current_goal_scanned = false
    }

    if (msg.is_exploration_finished !== undefined) {
      resolved.is_exploration_finished = msg.is_exploration_finished;
    }
    else {
      resolved.is_exploration_finished = false
    }

    return resolved;
    }
};

module.exports = PlannerMsgs;
