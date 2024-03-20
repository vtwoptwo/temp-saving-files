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

class ScriptFlag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loop_error = null;
      this.encoder_disconected = null;
      this.amp_limiter = null;
    }
    else {
      if (initObj.hasOwnProperty('loop_error')) {
        this.loop_error = initObj.loop_error
      }
      else {
        this.loop_error = false;
      }
      if (initObj.hasOwnProperty('encoder_disconected')) {
        this.encoder_disconected = initObj.encoder_disconected
      }
      else {
        this.encoder_disconected = false;
      }
      if (initObj.hasOwnProperty('amp_limiter')) {
        this.amp_limiter = initObj.amp_limiter
      }
      else {
        this.amp_limiter = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScriptFlag
    // Serialize message field [loop_error]
    bufferOffset = _serializer.bool(obj.loop_error, buffer, bufferOffset);
    // Serialize message field [encoder_disconected]
    bufferOffset = _serializer.bool(obj.encoder_disconected, buffer, bufferOffset);
    // Serialize message field [amp_limiter]
    bufferOffset = _serializer.bool(obj.amp_limiter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScriptFlag
    let len;
    let data = new ScriptFlag(null);
    // Deserialize message field [loop_error]
    data.loop_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [encoder_disconected]
    data.encoder_disconected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [amp_limiter]
    data.amp_limiter = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/ScriptFlag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ae55fdaf677921141ec0c2b7cf5ef83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool loop_error
    bool encoder_disconected
    bool amp_limiter
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScriptFlag(null);
    if (msg.loop_error !== undefined) {
      resolved.loop_error = msg.loop_error;
    }
    else {
      resolved.loop_error = false
    }

    if (msg.encoder_disconected !== undefined) {
      resolved.encoder_disconected = msg.encoder_disconected;
    }
    else {
      resolved.encoder_disconected = false
    }

    if (msg.amp_limiter !== undefined) {
      resolved.amp_limiter = msg.amp_limiter;
    }
    else {
      resolved.amp_limiter = false
    }

    return resolved;
    }
};

module.exports = ScriptFlag;
