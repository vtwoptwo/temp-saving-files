// Auto-generated. Do not edit!

// (in-package panther_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FaultFlag = require('./FaultFlag.js');
let ScriptFlag = require('./ScriptFlag.js');
let MotorState = require('./MotorState.js');

//-----------------------------------------------------------

class MotorControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
      this.current = null;
      this.temperature = null;
      this.fault_flag = null;
      this.script_flag = null;
      this.left_motor = null;
      this.right_motor = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('fault_flag')) {
        this.fault_flag = initObj.fault_flag
      }
      else {
        this.fault_flag = new FaultFlag();
      }
      if (initObj.hasOwnProperty('script_flag')) {
        this.script_flag = initObj.script_flag
      }
      else {
        this.script_flag = new ScriptFlag();
      }
      if (initObj.hasOwnProperty('left_motor')) {
        this.left_motor = initObj.left_motor
      }
      else {
        this.left_motor = new MotorState();
      }
      if (initObj.hasOwnProperty('right_motor')) {
        this.right_motor = initObj.right_motor
      }
      else {
        this.right_motor = new MotorState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorControllerState
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [fault_flag]
    bufferOffset = FaultFlag.serialize(obj.fault_flag, buffer, bufferOffset);
    // Serialize message field [script_flag]
    bufferOffset = ScriptFlag.serialize(obj.script_flag, buffer, bufferOffset);
    // Serialize message field [left_motor]
    bufferOffset = MotorState.serialize(obj.left_motor, buffer, bufferOffset);
    // Serialize message field [right_motor]
    bufferOffset = MotorState.serialize(obj.right_motor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorControllerState
    let len;
    let data = new MotorControllerState(null);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fault_flag]
    data.fault_flag = FaultFlag.deserialize(buffer, bufferOffset);
    // Deserialize message field [script_flag]
    data.script_flag = ScriptFlag.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_motor]
    data.left_motor = MotorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_motor]
    data.right_motor = MotorState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorState.getMessageSize(object.left_motor);
    length += MotorState.getMessageSize(object.right_motor);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/MotorControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20ed5f1b3f79d90615a0b88922a91b07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MotorControllerState(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.fault_flag !== undefined) {
      resolved.fault_flag = FaultFlag.Resolve(msg.fault_flag)
    }
    else {
      resolved.fault_flag = new FaultFlag()
    }

    if (msg.script_flag !== undefined) {
      resolved.script_flag = ScriptFlag.Resolve(msg.script_flag)
    }
    else {
      resolved.script_flag = new ScriptFlag()
    }

    if (msg.left_motor !== undefined) {
      resolved.left_motor = MotorState.Resolve(msg.left_motor)
    }
    else {
      resolved.left_motor = new MotorState()
    }

    if (msg.right_motor !== undefined) {
      resolved.right_motor = MotorState.Resolve(msg.right_motor)
    }
    else {
      resolved.right_motor = new MotorState()
    }

    return resolved;
    }
};

module.exports = MotorControllerState;
