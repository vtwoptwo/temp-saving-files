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

class LEDAnimation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.param = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDAnimation
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [param]
    bufferOffset = _serializer.string(obj.param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDAnimation
    let len;
    let data = new LEDAnimation(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [param]
    data.param = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.param);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/LEDAnimation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f659758618bdff822f0aa756076978cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 E_STOP = 0
    uint16 READY = 1
    uint16 ERROR = 2
    uint16 MANUAL_ACTION = 3
    uint16 AUTONOMOUS_ACTION = 4
    uint16 GOAL_ACHIEVED = 5
    uint16 LOW_BATTERY = 6
    uint16 CRITICAL_BATTERY = 7
    uint16 BATTERY_STATE = 8
    uint16 CHARGING_BATTERY = 9
    
    uint16 id
    string param
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDAnimation(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.param !== undefined) {
      resolved.param = msg.param;
    }
    else {
      resolved.param = ''
    }

    return resolved;
    }
};

// Constants for message
LEDAnimation.Constants = {
  E_STOP: 0,
  READY: 1,
  ERROR: 2,
  MANUAL_ACTION: 3,
  AUTONOMOUS_ACTION: 4,
  GOAL_ACHIEVED: 5,
  LOW_BATTERY: 6,
  CRITICAL_BATTERY: 7,
  BATTERY_STATE: 8,
  CHARGING_BATTERY: 9,
}

module.exports = LEDAnimation;
