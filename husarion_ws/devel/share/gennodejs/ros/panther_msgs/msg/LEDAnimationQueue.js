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

class LEDAnimationQueue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.queue = null;
    }
    else {
      if (initObj.hasOwnProperty('queue')) {
        this.queue = initObj.queue
      }
      else {
        this.queue = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LEDAnimationQueue
    // Serialize message field [queue]
    bufferOffset = _arraySerializer.string(obj.queue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LEDAnimationQueue
    let len;
    let data = new LEDAnimationQueue(null);
    // Deserialize message field [queue]
    data.queue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.queue.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/LEDAnimationQueue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39f7d3ee4a5c2676f6070f72ebc81a53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] queue
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LEDAnimationQueue(null);
    if (msg.queue !== undefined) {
      resolved.queue = msg.queue;
    }
    else {
      resolved.queue = []
    }

    return resolved;
    }
};

module.exports = LEDAnimationQueue;
