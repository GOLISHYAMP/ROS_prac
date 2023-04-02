// Auto-generated. Do not edit!

// (in-package battery_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class battery_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_percentage = null;
      this.battery_state = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_percentage')) {
        this.battery_percentage = initObj.battery_percentage
      }
      else {
        this.battery_percentage = 0;
      }
      if (initObj.hasOwnProperty('battery_state')) {
        this.battery_state = initObj.battery_state
      }
      else {
        this.battery_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type battery_status
    // Serialize message field [battery_percentage]
    bufferOffset = _serializer.int64(obj.battery_percentage, buffer, bufferOffset);
    // Serialize message field [battery_state]
    bufferOffset = _serializer.int64(obj.battery_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type battery_status
    let len;
    let data = new battery_status(null);
    // Deserialize message field [battery_percentage]
    data.battery_percentage = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [battery_state]
    data.battery_state = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'battery_msgs/battery_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '957b95659cace2f80a6937514c22929b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 battery_percentage
    int64 battery_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new battery_status(null);
    if (msg.battery_percentage !== undefined) {
      resolved.battery_percentage = msg.battery_percentage;
    }
    else {
      resolved.battery_percentage = 0
    }

    if (msg.battery_state !== undefined) {
      resolved.battery_state = msg.battery_state;
    }
    else {
      resolved.battery_state = 0
    }

    return resolved;
    }
};

module.exports = battery_status;
