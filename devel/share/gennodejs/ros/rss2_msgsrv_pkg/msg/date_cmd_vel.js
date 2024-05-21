// Auto-generated. Do not edit!

// (in-package rss2_msgsrv_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class date_cmd_vel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.alint_date = null;
      this.alint_cmd_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('alint_date')) {
        this.alint_date = initObj.alint_date
      }
      else {
        this.alint_date = '';
      }
      if (initObj.hasOwnProperty('alint_cmd_vel')) {
        this.alint_cmd_vel = initObj.alint_cmd_vel
      }
      else {
        this.alint_cmd_vel = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type date_cmd_vel
    // Serialize message field [alint_date]
    bufferOffset = _serializer.string(obj.alint_date, buffer, bufferOffset);
    // Serialize message field [alint_cmd_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.alint_cmd_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type date_cmd_vel
    let len;
    let data = new date_cmd_vel(null);
    // Deserialize message field [alint_date]
    data.alint_date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alint_cmd_vel]
    data.alint_cmd_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.alint_date);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rss2_msgsrv_pkg/date_cmd_vel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '229588a82b2404ec2a567ecac3edc51c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string alint_date
    geometry_msgs/Twist alint_cmd_vel
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new date_cmd_vel(null);
    if (msg.alint_date !== undefined) {
      resolved.alint_date = msg.alint_date;
    }
    else {
      resolved.alint_date = ''
    }

    if (msg.alint_cmd_vel !== undefined) {
      resolved.alint_cmd_vel = geometry_msgs.msg.Twist.Resolve(msg.alint_cmd_vel)
    }
    else {
      resolved.alint_cmd_vel = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = date_cmd_vel;
