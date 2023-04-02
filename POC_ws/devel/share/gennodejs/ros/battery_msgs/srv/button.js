// Auto-generated. Do not edit!

// (in-package battery_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class buttonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.on = null;
    }
    else {
      if (initObj.hasOwnProperty('on')) {
        this.on = initObj.on
      }
      else {
        this.on = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type buttonRequest
    // Serialize message field [on]
    bufferOffset = _serializer.int64(obj.on, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type buttonRequest
    let len;
    let data = new buttonRequest(null);
    // Deserialize message field [on]
    data.on = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'battery_msgs/buttonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b526c44c241904733faa3b670847c982';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 on
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new buttonRequest(null);
    if (msg.on !== undefined) {
      resolved.on = msg.on;
    }
    else {
      resolved.on = 0
    }

    return resolved;
    }
};

class buttonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.power = null;
    }
    else {
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type buttonResponse
    // Serialize message field [power]
    bufferOffset = _serializer.int64(obj.power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type buttonResponse
    let len;
    let data = new buttonResponse(null);
    // Deserialize message field [power]
    data.power = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'battery_msgs/buttonResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c99d52463144470019284766865250e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 power
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new buttonResponse(null);
    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: buttonRequest,
  Response: buttonResponse,
  md5sum() { return 'd768bdedadf64cabd792cf13b0c9dcc6'; },
  datatype() { return 'battery_msgs/button'; }
};
