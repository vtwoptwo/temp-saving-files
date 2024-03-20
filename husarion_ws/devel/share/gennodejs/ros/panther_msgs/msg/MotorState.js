// Auto-generated. Do not edit!

// (in-package panther_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RuntimeError = require('./RuntimeError.js');

//-----------------------------------------------------------

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_joint_name = null;
      this.runtime_error = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_joint_name')) {
        this.motor_joint_name = initObj.motor_joint_name
      }
      else {
        this.motor_joint_name = '';
      }
      if (initObj.hasOwnProperty('runtime_error')) {
        this.runtime_error = initObj.runtime_error
      }
      else {
        this.runtime_error = new RuntimeError();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [motor_joint_name]
    bufferOffset = _serializer.string(obj.motor_joint_name, buffer, bufferOffset);
    // Serialize message field [runtime_error]
    bufferOffset = RuntimeError.serialize(obj.runtime_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [motor_joint_name]
    data.motor_joint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [runtime_error]
    data.runtime_error = RuntimeError.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.motor_joint_name);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77b28dab8f3bd880daefbd7dfd1955e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string motor_joint_name
    panther_msgs/RuntimeError runtime_error
    ================================================================================
    MSG: panther_msgs/RuntimeError
    bool amps_limit_active
    bool motor_stall
    bool loop_error
    bool safety_stop_active
    bool forward_limit_triggered
    bool reverse_limit_triggered
    bool amps_trigger_activated
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorState(null);
    if (msg.motor_joint_name !== undefined) {
      resolved.motor_joint_name = msg.motor_joint_name;
    }
    else {
      resolved.motor_joint_name = ''
    }

    if (msg.runtime_error !== undefined) {
      resolved.runtime_error = RuntimeError.Resolve(msg.runtime_error)
    }
    else {
      resolved.runtime_error = new RuntimeError()
    }

    return resolved;
    }
};

module.exports = MotorState;
