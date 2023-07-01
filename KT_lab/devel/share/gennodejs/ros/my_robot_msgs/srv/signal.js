// Auto-generated. Do not edit!

// (in-package my_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class signalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_number = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_number')) {
        this.signal_number = initObj.signal_number
      }
      else {
        this.signal_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type signalRequest
    // Serialize message field [signal_number]
    bufferOffset = _serializer.int64(obj.signal_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type signalRequest
    let len;
    let data = new signalRequest(null);
    // Deserialize message field [signal_number]
    data.signal_number = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/signalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a36665241ea9676ae26d106d91ba47fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 signal_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new signalRequest(null);
    if (msg.signal_number !== undefined) {
      resolved.signal_number = msg.signal_number;
    }
    else {
      resolved.signal_number = 0
    }

    return resolved;
    }
};

class signalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
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
    // Serializes a message object of type signalResponse
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type signalResponse
    let len;
    let data = new signalResponse(null);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.color);
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/signalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4c3be35cd7d8d2dbd285480bb7150b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new signalResponse(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
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
  Request: signalRequest,
  Response: signalResponse,
  md5sum() { return 'f69cbcdad8e751aa0b4f314d7baa16e8'; },
  datatype() { return 'my_robot_msgs/signal'; }
};
