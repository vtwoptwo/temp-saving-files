// Auto-generated. Do not edit!

// (in-package panther_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RuntimeError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amps_limit_active = null;
      this.motor_stall = null;
      this.loop_error = null;
      this.safety_stop_active = null;
      this.forward_limit_triggered = null;
      this.reverse_limit_triggered = null;
      this.amps_trigger_activated = null;
    }
    else {
      if (initObj.hasOwnProperty('amps_limit_active')) {
        this.amps_limit_active = initObj.amps_limit_active
      }
      else {
        this.amps_limit_active = false;
      }
      if (initObj.hasOwnProperty('motor_stall')) {
        this.motor_stall = initObj.motor_stall
      }
      else {
        this.motor_stall = false;
      }
      if (initObj.hasOwnProperty('loop_error')) {
        this.loop_error = initObj.loop_error
      }
      else {
        this.loop_error = false;
      }
      if (initObj.hasOwnProperty('safety_stop_active')) {
        this.safety_stop_active = initObj.safety_stop_active
      }
      else {
        this.safety_stop_active = false;
      }
      if (initObj.hasOwnProperty('forward_limit_triggered')) {
        this.forward_limit_triggered = initObj.forward_limit_triggered
      }
      else {
        this.forward_limit_triggered = false;
      }
      if (initObj.hasOwnProperty('reverse_limit_triggered')) {
        this.reverse_limit_triggered = initObj.reverse_limit_triggered
      }
      else {
        this.reverse_limit_triggered = false;
      }
      if (initObj.hasOwnProperty('amps_trigger_activated')) {
        this.amps_trigger_activated = initObj.amps_trigger_activated
      }
      else {
        this.amps_trigger_activated = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RuntimeError
    // Serialize message field [amps_limit_active]
    bufferOffset = _serializer.bool(obj.amps_limit_active, buffer, bufferOffset);
    // Serialize message field [motor_stall]
    bufferOffset = _serializer.bool(obj.motor_stall, buffer, bufferOffset);
    // Serialize message field [loop_error]
    bufferOffset = _serializer.bool(obj.loop_error, buffer, bufferOffset);
    // Serialize message field [safety_stop_active]
    bufferOffset = _serializer.bool(obj.safety_stop_active, buffer, bufferOffset);
    // Serialize message field [forward_limit_triggered]
    bufferOffset = _serializer.bool(obj.forward_limit_triggered, buffer, bufferOffset);
    // Serialize message field [reverse_limit_triggered]
    bufferOffset = _serializer.bool(obj.reverse_limit_triggered, buffer, bufferOffset);
    // Serialize message field [amps_trigger_activated]
    bufferOffset = _serializer.bool(obj.amps_trigger_activated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RuntimeError
    let len;
    let data = new RuntimeError(null);
    // Deserialize message field [amps_limit_active]
    data.amps_limit_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_stall]
    data.motor_stall = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loop_error]
    data.loop_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [safety_stop_active]
    data.safety_stop_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward_limit_triggered]
    data.forward_limit_triggered = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse_limit_triggered]
    data.reverse_limit_triggered = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [amps_trigger_activated]
    data.amps_trigger_activated = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/RuntimeError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e114213d0c80320bc7a928841db326e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RuntimeError(null);
    if (msg.amps_limit_active !== undefined) {
      resolved.amps_limit_active = msg.amps_limit_active;
    }
    else {
      resolved.amps_limit_active = false
    }

    if (msg.motor_stall !== undefined) {
      resolved.motor_stall = msg.motor_stall;
    }
    else {
      resolved.motor_stall = false
    }

    if (msg.loop_error !== undefined) {
      resolved.loop_error = msg.loop_error;
    }
    else {
      resolved.loop_error = false
    }

    if (msg.safety_stop_active !== undefined) {
      resolved.safety_stop_active = msg.safety_stop_active;
    }
    else {
      resolved.safety_stop_active = false
    }

    if (msg.forward_limit_triggered !== undefined) {
      resolved.forward_limit_triggered = msg.forward_limit_triggered;
    }
    else {
      resolved.forward_limit_triggered = false
    }

    if (msg.reverse_limit_triggered !== undefined) {
      resolved.reverse_limit_triggered = msg.reverse_limit_triggered;
    }
    else {
      resolved.reverse_limit_triggered = false
    }

    if (msg.amps_trigger_activated !== undefined) {
      resolved.amps_trigger_activated = msg.amps_trigger_activated;
    }
    else {
      resolved.amps_trigger_activated = false
    }

    return resolved;
    }
};

module.exports = RuntimeError;
