// Auto-generated. Do not edit!

// (in-package panther_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LEDImageAnimation = require('../msg/LEDImageAnimation.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLEDImageAnimationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.rear = null;
      this.repeating = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = new LEDImageAnimation();
      }
      if (initObj.hasOwnProperty('rear')) {
        this.rear = initObj.rear
      }
      else {
        this.rear = new LEDImageAnimation();
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
    // Serializes a message object of type SetLEDImageAnimationRequest
    // Serialize message field [front]
    bufferOffset = LEDImageAnimation.serialize(obj.front, buffer, bufferOffset);
    // Serialize message field [rear]
    bufferOffset = LEDImageAnimation.serialize(obj.rear, buffer, bufferOffset);
    // Serialize message field [repeating]
    bufferOffset = _serializer.bool(obj.repeating, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLEDImageAnimationRequest
    let len;
    let data = new SetLEDImageAnimationRequest(null);
    // Deserialize message field [front]
    data.front = LEDImageAnimation.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear]
    data.rear = LEDImageAnimation.deserialize(buffer, bufferOffset);
    // Deserialize message field [repeating]
    data.repeating = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LEDImageAnimation.getMessageSize(object.front);
    length += LEDImageAnimation.getMessageSize(object.rear);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'panther_msgs/SetLEDImageAnimationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fe9a29aafdecbd1db4304f1971b8337';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    panther_msgs/LEDImageAnimation front
    panther_msgs/LEDImageAnimation rear
    bool repeating
    
    ================================================================================
    MSG: panther_msgs/LEDImageAnimation
    string image
    float32 duration
    float32 brightness
    uint8 repeat
    uint32 color
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLEDImageAnimationRequest(null);
    if (msg.front !== undefined) {
      resolved.front = LEDImageAnimation.Resolve(msg.front)
    }
    else {
      resolved.front = new LEDImageAnimation()
    }

    if (msg.rear !== undefined) {
      resolved.rear = LEDImageAnimation.Resolve(msg.rear)
    }
    else {
      resolved.rear = new LEDImageAnimation()
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

class SetLEDImageAnimationResponse {
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
    // Serializes a message object of type SetLEDImageAnimationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLEDImageAnimationResponse
    let len;
    let data = new SetLEDImageAnimationResponse(null);
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
    return 'panther_msgs/SetLEDImageAnimationResponse';
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
    const resolved = new SetLEDImageAnimationResponse(null);
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
  Request: SetLEDImageAnimationRequest,
  Response: SetLEDImageAnimationResponse,
  md5sum() { return '160476792cabdd0ac4f8a13800bc7d59'; },
  datatype() { return 'panther_msgs/SetLEDImageAnimation'; }
};
