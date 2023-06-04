// Auto-generated. Do not edit!

// (in-package servicetest.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class hjhRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.age = null;
      this.name = null;
      this.school = null;
    }
    else {
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('school')) {
        this.school = initObj.school
      }
      else {
        this.school = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hjhRequest
    // Serialize message field [age]
    bufferOffset = _serializer.int16(obj.age, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [school]
    bufferOffset = _serializer.string(obj.school, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hjhRequest
    let len;
    let data = new hjhRequest(null);
    // Deserialize message field [age]
    data.age = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [school]
    data.school = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.school.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servicetest/hjhRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eaf0160f0047e4b8eb2ba65ee622b437';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int16 age
    string name
    string school
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hjhRequest(null);
    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.school !== undefined) {
      resolved.school = msg.school;
    }
    else {
      resolved.school = ''
    }

    return resolved;
    }
};

class hjhResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.memory = null;
    }
    else {
      if (initObj.hasOwnProperty('memory')) {
        this.memory = initObj.memory
      }
      else {
        this.memory = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hjhResponse
    // Serialize message field [memory]
    bufferOffset = _serializer.string(obj.memory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hjhResponse
    let len;
    let data = new hjhResponse(null);
    // Deserialize message field [memory]
    data.memory = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.memory.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'servicetest/hjhResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '496a53350ad789a04356a5ee8e735420';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string memory
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hjhResponse(null);
    if (msg.memory !== undefined) {
      resolved.memory = msg.memory;
    }
    else {
      resolved.memory = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: hjhRequest,
  Response: hjhResponse,
  md5sum() { return '4ea70316ac12589c73d4bd02fe66905f'; },
  datatype() { return 'servicetest/hjh'; }
};
