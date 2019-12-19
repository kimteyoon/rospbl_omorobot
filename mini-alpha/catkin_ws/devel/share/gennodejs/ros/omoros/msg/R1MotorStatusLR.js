// Auto-generated. Do not edit!

// (in-package omoros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let R1MotorStatus = require('./R1MotorStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class R1MotorStatusLR {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Vspeed = null;
      this.Vomega = null;
      this.left = null;
      this.right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Vspeed')) {
        this.Vspeed = initObj.Vspeed
      }
      else {
        this.Vspeed = 0.0;
      }
      if (initObj.hasOwnProperty('Vomega')) {
        this.Vomega = initObj.Vomega
      }
      else {
        this.Vomega = 0.0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new R1MotorStatus();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new R1MotorStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type R1MotorStatusLR
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Vspeed]
    bufferOffset = _serializer.float32(obj.Vspeed, buffer, bufferOffset);
    // Serialize message field [Vomega]
    bufferOffset = _serializer.float32(obj.Vomega, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = R1MotorStatus.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = R1MotorStatus.serialize(obj.right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type R1MotorStatusLR
    let len;
    let data = new R1MotorStatusLR(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Vspeed]
    data.Vspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Vomega]
    data.Vomega = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = R1MotorStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = R1MotorStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'omoros/R1MotorStatusLR';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4f43c45f2af2c6f8fc40d2ec2c98367';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 Vspeed   	# mm per second
    float32 Vomega	    # mrad per second
    R1MotorStatus left
    R1MotorStatus right
    
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
    
    ================================================================================
    MSG: omoros/R1MotorStatus
    bool low_voltage
    bool overloaded
    int8 power      # PWM duty cycle -100 ... 100
    float32 encoder # degree
    float32 RPM   	# degree per second
    float32 ODO	    # odometry
    float32 speed   # mm per second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new R1MotorStatusLR(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Vspeed !== undefined) {
      resolved.Vspeed = msg.Vspeed;
    }
    else {
      resolved.Vspeed = 0.0
    }

    if (msg.Vomega !== undefined) {
      resolved.Vomega = msg.Vomega;
    }
    else {
      resolved.Vomega = 0.0
    }

    if (msg.left !== undefined) {
      resolved.left = R1MotorStatus.Resolve(msg.left)
    }
    else {
      resolved.left = new R1MotorStatus()
    }

    if (msg.right !== undefined) {
      resolved.right = R1MotorStatus.Resolve(msg.right)
    }
    else {
      resolved.right = new R1MotorStatus()
    }

    return resolved;
    }
};

module.exports = R1MotorStatusLR;
