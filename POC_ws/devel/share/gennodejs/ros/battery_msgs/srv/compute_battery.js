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

class compute_batteryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.percentage = null;
    }
    else {
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type compute_batteryRequest
    // Serialize message field [percentage]
    bufferOffset = _serializer.int64(obj.percentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type compute_batteryRequest
    let len;
    let data = new compute_batteryRequest(null);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'battery_msgs/compute_batteryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'face31f38d20abbde445df7aa912bb07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 percentage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new compute_batteryRequest(null);
    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0
    }

    return resolved;
    }
};

class compute_batteryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type compute_batteryResponse
    // Serialize message field [set]
    bufferOffset = _serializer.bool(obj.set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type compute_batteryResponse
    let len;
    let data = new compute_batteryResponse(null);
    // Deserialize message field [set]
    data.set = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'battery_msgs/compute_batteryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '808640c210a75fd8f300baefe9cd8cec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new compute_batteryResponse(null);
    if (msg.set !== undefined) {
      resolved.set = msg.set;
    }
    else {
      resolved.set = false
    }

    return resolved;
    }
};

module.exports = {
  Request: compute_batteryRequest,
  Response: compute_batteryResponse,
  md5sum() { return '0a0786e9c7f1dae93c6b1b4c8555c6e5'; },
  datatype() { return 'battery_msgs/compute_battery'; }
};
