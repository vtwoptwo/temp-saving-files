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

class LEDImageAnimation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
      this.duration = null;
      this.brightness = null;
      this.repeat = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = '';
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0.0;
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDImageAnimation
    // Serialize message field [image]
    bufferOffset = _serializer.string(obj.image, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.float32(obj.brightness, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.uint8(obj.repeat, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint32(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDImageAnimation
    let len;
    let data = new LEDImageAnimation(null);
    // Deserialize message field [image]
    data.image = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.image);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/LEDImageAnimation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e28603d00b7f8b45434019f01a6bcf71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LEDImageAnimation(null);
    if (msg.image !== undefined) {
      resolved.image = msg.image;
    }
    else {
      resolved.image = ''
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0.0
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = msg.repeat;
    }
    else {
      resolved.repeat = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    return resolved;
    }
};

module.exports = LEDImageAnimation;
