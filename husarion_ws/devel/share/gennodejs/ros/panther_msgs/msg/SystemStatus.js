// Auto-generated. Do not edit!

// (in-package panther_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cpu_percent = null;
      this.cpu_temp = null;
      this.avg_load_percent = null;
      this.ram_usage_percent = null;
      this.disc_usage_percent = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cpu_percent')) {
        this.cpu_percent = initObj.cpu_percent
      }
      else {
        this.cpu_percent = [];
      }
      if (initObj.hasOwnProperty('cpu_temp')) {
        this.cpu_temp = initObj.cpu_temp
      }
      else {
        this.cpu_temp = 0.0;
      }
      if (initObj.hasOwnProperty('avg_load_percent')) {
        this.avg_load_percent = initObj.avg_load_percent
      }
      else {
        this.avg_load_percent = 0.0;
      }
      if (initObj.hasOwnProperty('ram_usage_percent')) {
        this.ram_usage_percent = initObj.ram_usage_percent
      }
      else {
        this.ram_usage_percent = 0.0;
      }
      if (initObj.hasOwnProperty('disc_usage_percent')) {
        this.disc_usage_percent = initObj.disc_usage_percent
      }
      else {
        this.disc_usage_percent = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cpu_percent]
    bufferOffset = _arraySerializer.float32(obj.cpu_percent, buffer, bufferOffset, null);
    // Serialize message field [cpu_temp]
    bufferOffset = _serializer.float32(obj.cpu_temp, buffer, bufferOffset);
    // Serialize message field [avg_load_percent]
    bufferOffset = _serializer.float32(obj.avg_load_percent, buffer, bufferOffset);
    // Serialize message field [ram_usage_percent]
    bufferOffset = _serializer.float32(obj.ram_usage_percent, buffer, bufferOffset);
    // Serialize message field [disc_usage_percent]
    bufferOffset = _serializer.float32(obj.disc_usage_percent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatus
    let len;
    let data = new SystemStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cpu_percent]
    data.cpu_percent = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cpu_temp]
    data.cpu_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [avg_load_percent]
    data.avg_load_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ram_usage_percent]
    data.ram_usage_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disc_usage_percent]
    data.disc_usage_percent = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.cpu_percent.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panther_msgs/SystemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52a7bb997a88ff007b47b0547fe4a966';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32[] cpu_percent
    float32 cpu_temp
    float32 avg_load_percent
    float32 ram_usage_percent
    float32 disc_usage_percent
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cpu_percent !== undefined) {
      resolved.cpu_percent = msg.cpu_percent;
    }
    else {
      resolved.cpu_percent = []
    }

    if (msg.cpu_temp !== undefined) {
      resolved.cpu_temp = msg.cpu_temp;
    }
    else {
      resolved.cpu_temp = 0.0
    }

    if (msg.avg_load_percent !== undefined) {
      resolved.avg_load_percent = msg.avg_load_percent;
    }
    else {
      resolved.avg_load_percent = 0.0
    }

    if (msg.ram_usage_percent !== undefined) {
      resolved.ram_usage_percent = msg.ram_usage_percent;
    }
    else {
      resolved.ram_usage_percent = 0.0
    }

    if (msg.disc_usage_percent !== undefined) {
      resolved.disc_usage_percent = msg.disc_usage_percent;
    }
    else {
      resolved.disc_usage_percent = 0.0
    }

    return resolved;
    }
};

module.exports = SystemStatus;
