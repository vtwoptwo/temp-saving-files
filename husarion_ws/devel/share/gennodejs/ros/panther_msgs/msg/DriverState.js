// Auto-generated. Do not edit!

// (in-package panther_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorControllerState = require('./MotorControllerState.js');

//-----------------------------------------------------------

class DriverState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.rear = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = new MotorControllerState();
      }
      if (initObj.hasOwnProperty('rear')) {
        this.rear = initObj.rear
      }
      else {
        this.rear = new MotorControllerState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriverState
    // Serialize message field [front]
    bufferOffset = MotorControllerState.serialize(obj.front, buffer, bufferOffset);
    // Serialize message field [rear]
    bufferOffset = MotorControllerState.serialize(obj.rear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriverState
    let len;
    let data = new DriverState(null);
    // Deserialize message field [front]
    data.front = MotorControllerState.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear]
    data.rear = MotorControllerState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorControllerState.getMessageSize(object.front);
    length += MotorControllerState.getMessageSize(object.rear);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/DriverState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '475379213c09f61430c9f6dcd6c19337';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    panther_msgs/MotorControllerState front
    panther_msgs/MotorControllerState rear
    ================================================================================
    MSG: panther_msgs/MotorControllerState
    float32 voltage
    float32 current
    float32 temperature
    panther_msgs/FaultFlag fault_flag
    panther_msgs/ScriptFlag script_flag
    panther_msgs/MotorState left_motor
    panther_msgs/MotorState right_motor
    ================================================================================
    MSG: panther_msgs/FaultFlag
    bool can_net_err
    bool overheat
    bool overvoltage
    bool undervoltage
    bool short_circuit
    bool emergency_stop
    bool motor_or_sensor_setup_fault
    bool mosfet_failure
    bool default_config_loaded_at_startup
    ================================================================================
    MSG: panther_msgs/ScriptFlag
    bool loop_error
    bool encoder_disconected
    bool amp_limiter
    ================================================================================
    MSG: panther_msgs/MotorState
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
    const resolved = new DriverState(null);
    if (msg.front !== undefined) {
      resolved.front = MotorControllerState.Resolve(msg.front)
    }
    else {
      resolved.front = new MotorControllerState()
    }

    if (msg.rear !== undefined) {
      resolved.rear = MotorControllerState.Resolve(msg.rear)
    }
    else {
      resolved.rear = new MotorControllerState()
    }

    return resolved;
    }
};

module.exports = DriverState;
