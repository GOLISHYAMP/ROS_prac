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

class sigRequest {
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
    // Serializes a message object of type sigRequest
    // Serialize message field [signal_number]
    bufferOffset = _serializer.int64(obj.signal_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sigRequest
    let len;
    let data = new sigRequest(null);
    // Deserialize message field [signal_number]
    data.signal_number = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/sigRequest';
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
    const resolved = new sigRequest(null);
    if (msg.signal_number !== undefined) {
      resolved.signal_number = msg.signal_number;
    }
    else {
      resolved.signal_number = 0
    }

    return resolved;
    }
};

class sigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_color = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_color')) {
        this.signal_color = initObj.signal_color
      }
      else {
        this.signal_color = '';
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
    // Serializes a message object of type sigResponse
    // Serialize message field [signal_color]
    bufferOffset = _serializer.string(obj.signal_color, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sigResponse
    let len;
    let data = new sigResponse(null);
    // Deserialize message field [signal_color]
    data.signal_color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.signal_color);
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/sigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '450e30f7eff114429485a22ce41504da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string signal_color
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sigResponse(null);
    if (msg.signal_color !== undefined) {
      resolved.signal_color = msg.signal_color;
    }
    else {
      resolved.signal_color = ''
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
  Request: sigRequest,
  Response: sigResponse,
  md5sum() { return '7bc8af7403a190711a182edad0f2139d'; },
  datatype() { return 'my_robot_msgs/sig'; }
};
