// Auto-generated. Do not edit!

// (in-package traversability_analysis.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class TerrainGrid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.min_z = null;
      this.bottom_point = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('min_z')) {
        this.min_z = initObj.min_z
      }
      else {
        this.min_z = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_point')) {
        this.bottom_point = initObj.bottom_point
      }
      else {
        this.bottom_point = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TerrainGrid
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [min_z]
    bufferOffset = _serializer.float32(obj.min_z, buffer, bufferOffset);
    // Serialize message field [bottom_point]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.bottom_point, buffer, bufferOffset);
    // Serialize message field [points]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TerrainGrid
    let len;
    let data = new TerrainGrid(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [min_z]
    data.min_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bottom_point]
    data.bottom_point = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    data.points = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.points);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'traversability_analysis/TerrainGrid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e44473ba5f931adc745fc62d9a24efab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TerrainGrid(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.min_z !== undefined) {
      resolved.min_z = msg.min_z;
    }
    else {
      resolved.min_z = 0.0
    }

    if (msg.bottom_point !== undefined) {
      resolved.bottom_point = geometry_msgs.msg.Point32.Resolve(msg.bottom_point)
    }
    else {
      resolved.bottom_point = new geometry_msgs.msg.Point32()
    }

    if (msg.points !== undefined) {
      resolved.points = sensor_msgs.msg.PointCloud2.Resolve(msg.points)
    }
    else {
      resolved.points = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = TerrainGrid;
