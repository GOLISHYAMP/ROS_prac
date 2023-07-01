// Auto-generated. Do not edit!

// (in-package my_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_number = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_number')) {
        this.signal_number = initObj.signal_number
      }
      else {
        this.signal_number = 0;
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
    // Serializes a message object of type robot
    // Serialize message field [signal_number]
    bufferOffset = _serializer.int64(obj.signal_number, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot
    let len;
    let data = new robot(null);
    // Deserialize message field [signal_number]
    data.signal_number = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_msgs/robot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab597da5ada892a08fde55bf769237dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 signal_number
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot(null);
    if (msg.signal_number !== undefined) {
      resolved.signal_number = msg.signal_number;
    }
    else {
      resolved.signal_number = 0
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

module.exports = robot;
