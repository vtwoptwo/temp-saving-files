// Auto-generated. Do not edit!

// (in-package panther_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LEDAnimation = require('../msg/LEDAnimation.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLEDAnimationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.animation = null;
      this.repeating = null;
    }
    else {
      if (initObj.hasOwnProperty('animation')) {
        this.animation = initObj.animation
      }
      else {
        this.animation = new LEDAnimation();
      }
      if (initObj.hasOwnProperty('repeating')) {
        this.repeating = initObj.repeating
      }
      else {
        this.repeating = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLEDAnimationRequest
    // Serialize message field [animation]
    bufferOffset = LEDAnimation.serialize(obj.animation, buffer, bufferOffset);
    // Serialize message field [repeating]
    bufferOffset = _serializer.bool(obj.repeating, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLEDAnimationRequest
    let len;
    let data = new SetLEDAnimationRequest(null);
    // Deserialize message field [animation]
    data.animation = LEDAnimation.deserialize(buffer, bufferOffset);
    // Deserialize message field [repeating]
    data.repeating = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LEDAnimation.getMessageSize(object.animation);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panther_msgs/SetLEDAnimationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e234c499508771a9b399989673df1b68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    panther_msgs/LEDAnimation animation
    bool repeating
    
    ================================================================================
    MSG: panther_msgs/LEDAnimation
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
    const resolved = new SetLEDAnimationRequest(null);
    if (msg.animation !== undefined) {
      resolved.animation = LEDAnimation.Resolve(msg.animation)
    }
    else {
      resolved.animation = new LEDAnimation()
    }

    if (msg.repeating !== undefined) {
      resolved.repeating = msg.repeating;
    }
    else {
      resolved.repeating = false
    }

    return resolved;
    }
};

class SetLEDAnimationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLEDAnimationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLEDAnimationResponse
    let len;
    let data = new SetLEDAnimationResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panther_msgs/SetLEDAnimationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLEDAnimationResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetLEDAnimationRequest,
  Response: SetLEDAnimationResponse,
  md5sum() { return '4051ed2a8439003711f44f890ff30ab8'; },
  datatype() { return 'panther_msgs/SetLEDAnimation'; }
};
