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

class signal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_color = null;
      this.signal_number = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_color')) {
        this.signal_color = initObj.signal_color
      }
      else {
        this.signal_color = '';
      }
      if (initObj.hasOwnProperty('signal_number')) {
        this.signal_number = initObj.signal_number
      }
      else {
        this.signal_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type signal
    // Serialize message field [signal_color]
    bufferOffset = _serializer.string(obj.signal_color, buffer, bufferOffset);
    // Serialize message field [signal_number]
    bufferOffset = _serializer.int64(obj.signal_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type signal
    let len;
    let data = new signal(null);
    // Deserialize message field [signal_color]
    data.signal_color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [signal_number]
    data.signal_number = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.signal_color);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_msgs/signal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b51f0318452418723219cbc46255f5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string signal_color
    int64 signal_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new signal(null);
    if (msg.signal_color !== undefined) {
      resolved.signal_color = msg.signal_color;
    }
    else {
      resolved.signal_color = ''
    }

    if (msg.signal_number !== undefined) {
      resolved.signal_number = msg.signal_number;
    }
    else {
      resolved.signal_number = 0
    }

    return resolved;
    }
};

module.exports = signal;
