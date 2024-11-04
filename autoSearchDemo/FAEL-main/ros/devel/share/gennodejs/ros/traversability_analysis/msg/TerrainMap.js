// Auto-generated. Do not edit!

// (in-package traversability_analysis.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TerrainGrid = require('./TerrainGrid.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TerrainMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.min_x = null;
      this.min_y = null;
      this.z_value = null;
      this.grid_size = null;
      this.grid_width_num = null;
      this.grids = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('min_x')) {
        this.min_x = initObj.min_x
      }
      else {
        this.min_x = 0.0;
      }
      if (initObj.hasOwnProperty('min_y')) {
        this.min_y = initObj.min_y
      }
      else {
        this.min_y = 0.0;
      }
      if (initObj.hasOwnProperty('z_value')) {
        this.z_value = initObj.z_value
      }
      else {
        this.z_value = 0.0;
      }
      if (initObj.hasOwnProperty('grid_size')) {
        this.grid_size = initObj.grid_size
      }
      else {
        this.grid_size = 0.0;
      }
      if (initObj.hasOwnProperty('grid_width_num')) {
        this.grid_width_num = initObj.grid_width_num
      }
      else {
        this.grid_width_num = 0;
      }
      if (initObj.hasOwnProperty('grids')) {
        this.grids = initObj.grids
      }
      else {
        this.grids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TerrainMap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [min_x]
    bufferOffset = _serializer.float64(obj.min_x, buffer, bufferOffset);
    // Serialize message field [min_y]
    bufferOffset = _serializer.float64(obj.min_y, buffer, bufferOffset);
    // Serialize message field [z_value]
    bufferOffset = _serializer.float64(obj.z_value, buffer, bufferOffset);
    // Serialize message field [grid_size]
    bufferOffset = _serializer.float64(obj.grid_size, buffer, bufferOffset);
    // Serialize message field [grid_width_num]
    bufferOffset = _serializer.uint32(obj.grid_width_num, buffer, bufferOffset);
    // Serialize message field [grids]
    // Serialize the length for message field [grids]
    bufferOffset = _serializer.uint32(obj.grids.length, buffer, bufferOffset);
    obj.grids.forEach((val) => {
      bufferOffset = TerrainGrid.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TerrainMap
    let len;
    let data = new TerrainMap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_x]
    data.min_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_y]
    data.min_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_value]
    data.z_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [grid_size]
    data.grid_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [grid_width_num]
    data.grid_width_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [grids]
    // Deserialize array length for message field [grids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.grids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.grids[i] = TerrainGrid.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.grids.forEach((val) => {
      length += TerrainGrid.getMessageSize(val);
    });
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'traversability_analysis/TerrainMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab03f5fc2ebd4e308020515a4dcc93f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 min_x
    float64 min_y
    float64 z_value
    float64 grid_size
    uint32 grid_width_num
    TerrainGrid[] grids
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
    MSG: traversability_analysis/TerrainGrid
    uint8 status
    
    #坐标系都是输入的点云的坐标系，也就是相对于“map”系的坐标
    float32 min_z
    geometry_msgs/Point32 bottom_point
    sensor_msgs/PointCloud2 points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TerrainMap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.min_x !== undefined) {
      resolved.min_x = msg.min_x;
    }
    else {
      resolved.min_x = 0.0
    }

    if (msg.min_y !== undefined) {
      resolved.min_y = msg.min_y;
    }
    else {
      resolved.min_y = 0.0
    }

    if (msg.z_value !== undefined) {
      resolved.z_value = msg.z_value;
    }
    else {
      resolved.z_value = 0.0
    }

    if (msg.grid_size !== undefined) {
      resolved.grid_size = msg.grid_size;
    }
    else {
      resolved.grid_size = 0.0
    }

    if (msg.grid_width_num !== undefined) {
      resolved.grid_width_num = msg.grid_width_num;
    }
    else {
      resolved.grid_width_num = 0
    }

    if (msg.grids !== undefined) {
      resolved.grids = new Array(msg.grids.length);
      for (let i = 0; i < resolved.grids.length; ++i) {
        resolved.grids[i] = TerrainGrid.Resolve(msg.grids[i]);
      }
    }
    else {
      resolved.grids = []
    }

    return resolved;
    }
};

module.exports = TerrainMap;
