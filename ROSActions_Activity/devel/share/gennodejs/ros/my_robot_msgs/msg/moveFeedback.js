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

class moveFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_position = null;
    }
    else {
      if (initObj.hasOwnProperty('current_position')) {
        this.current_position = initObj.current_position
      }
      else {
        this.current_position = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moveFeedback
    // Serialize message field [current_position]
    bufferOffset = _serializer.float64(obj.current_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moveFeedback
    let len;
    let data = new moveFeedback(null);
    // Deserialize message field [current_position]
    data.current_position = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_robot_msgs/moveFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec33e2052d46d95cbf67ffb2e2a5f076';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result
    float64 current_position
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moveFeedback(null);
    if (msg.current_position !== undefined) {
      resolved.current_position = msg.current_position;
    }
    else {
      resolved.current_position = 0.0
    }

    return resolved;
    }
};

module.exports = moveFeedback;
