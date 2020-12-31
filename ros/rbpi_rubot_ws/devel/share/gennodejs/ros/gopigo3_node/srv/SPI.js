// Auto-generated. Do not edit!

// (in-package gopigo3_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SPIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_out = null;
    }
    else {
      if (initObj.hasOwnProperty('data_out')) {
        this.data_out = initObj.data_out
      }
      else {
        this.data_out = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SPIRequest
    // Serialize message field [data_out]
    bufferOffset = _arraySerializer.uint8(obj.data_out, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SPIRequest
    let len;
    let data = new SPIRequest(null);
    // Deserialize message field [data_out]
    data.data_out = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data_out.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gopigo3_node/SPIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '561ae924966a6e65b3e6723a081d160a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] data_out    # sent byte array
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SPIRequest(null);
    if (msg.data_out !== undefined) {
      resolved.data_out = msg.data_out;
    }
    else {
      resolved.data_out = []
    }

    return resolved;
    }
};

class SPIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_in = null;
    }
    else {
      if (initObj.hasOwnProperty('data_in')) {
        this.data_in = initObj.data_in
      }
      else {
        this.data_in = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SPIResponse
    // Serialize message field [data_in]
    bufferOffset = _arraySerializer.uint8(obj.data_in, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SPIResponse
    let len;
    let data = new SPIResponse(null);
    // Deserialize message field [data_in]
    data.data_in = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data_in.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gopigo3_node/SPIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a70bf8ea6ca66d7c5a18abead186e47d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] data_in     # received byte array
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SPIResponse(null);
    if (msg.data_in !== undefined) {
      resolved.data_in = msg.data_in;
    }
    else {
      resolved.data_in = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SPIRequest,
  Response: SPIResponse,
  md5sum() { return 'e04010cc40eb2ab4db306dc8c290e92b'; },
  datatype() { return 'gopigo3_node/SPI'; }
};
