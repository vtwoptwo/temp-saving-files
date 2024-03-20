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

class IOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aux_power = null;
      this.charger_connected = null;
      this.charger_enabled = null;
      this.digital_power = null;
      this.fan = null;
      this.motor_power = null;
      this.power_button = null;
    }
    else {
      if (initObj.hasOwnProperty('aux_power')) {
        this.aux_power = initObj.aux_power
      }
      else {
        this.aux_power = false;
      }
      if (initObj.hasOwnProperty('charger_connected')) {
        this.charger_connected = initObj.charger_connected
      }
      else {
        this.charger_connected = false;
      }
      if (initObj.hasOwnProperty('charger_enabled')) {
        this.charger_enabled = initObj.charger_enabled
      }
      else {
        this.charger_enabled = false;
      }
      if (initObj.hasOwnProperty('digital_power')) {
        this.digital_power = initObj.digital_power
      }
      else {
        this.digital_power = false;
      }
      if (initObj.hasOwnProperty('fan')) {
        this.fan = initObj.fan
      }
      else {
        this.fan = false;
      }
      if (initObj.hasOwnProperty('motor_power')) {
        this.motor_power = initObj.motor_power
      }
      else {
        this.motor_power = false;
      }
      if (initObj.hasOwnProperty('power_button')) {
        this.power_button = initObj.power_button
      }
      else {
        this.power_button = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOState
    // Serialize message field [aux_power]
    bufferOffset = _serializer.bool(obj.aux_power, buffer, bufferOffset);
    // Serialize message field [charger_connected]
    bufferOffset = _serializer.bool(obj.charger_connected, buffer, bufferOffset);
    // Serialize message field [charger_enabled]
    bufferOffset = _serializer.bool(obj.charger_enabled, buffer, bufferOffset);
    // Serialize message field [digital_power]
    bufferOffset = _serializer.bool(obj.digital_power, buffer, bufferOffset);
    // Serialize message field [fan]
    bufferOffset = _serializer.bool(obj.fan, buffer, bufferOffset);
    // Serialize message field [motor_power]
    bufferOffset = _serializer.bool(obj.motor_power, buffer, bufferOffset);
    // Serialize message field [power_button]
    bufferOffset = _serializer.bool(obj.power_button, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOState
    let len;
    let data = new IOState(null);
    // Deserialize message field [aux_power]
    data.aux_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charger_connected]
    data.charger_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charger_enabled]
    data.charger_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [digital_power]
    data.digital_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fan]
    data.fan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_power]
    data.motor_power = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [power_button]
    data.power_button = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/IOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9355949f9d224eb1c84d18ab411d0e55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool aux_power
    bool charger_connected
    bool charger_enabled
    bool digital_power
    bool fan
    bool motor_power
    bool power_button
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOState(null);
    if (msg.aux_power !== undefined) {
      resolved.aux_power = msg.aux_power;
    }
    else {
      resolved.aux_power = false
    }

    if (msg.charger_connected !== undefined) {
      resolved.charger_connected = msg.charger_connected;
    }
    else {
      resolved.charger_connected = false
    }

    if (msg.charger_enabled !== undefined) {
      resolved.charger_enabled = msg.charger_enabled;
    }
    else {
      resolved.charger_enabled = false
    }

    if (msg.digital_power !== undefined) {
      resolved.digital_power = msg.digital_power;
    }
    else {
      resolved.digital_power = false
    }

    if (msg.fan !== undefined) {
      resolved.fan = msg.fan;
    }
    else {
      resolved.fan = false
    }

    if (msg.motor_power !== undefined) {
      resolved.motor_power = msg.motor_power;
    }
    else {
      resolved.motor_power = false
    }

    if (msg.power_button !== undefined) {
      resolved.power_button = msg.power_button;
    }
    else {
      resolved.power_button = false
    }

    return resolved;
    }
};

module.exports = IOState;
