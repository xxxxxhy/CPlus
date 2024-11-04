// Auto-generated. Do not edit!

// (in-package ufomap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AABB = require('./AABB.js');
let Frustum = require('./Frustum.js');
let LineSegment = require('./LineSegment.js');
let OBB = require('./OBB.js');
let Plane = require('./Plane.js');
let Point = require('./Point.js');
let Ray = require('./Ray.js');
let Sphere = require('./Sphere.js');

//-----------------------------------------------------------

class BoundingVolume {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aabbs = null;
      this.frustums = null;
      this.line_segments = null;
      this.obbs = null;
      this.planes = null;
      this.points = null;
      this.rays = null;
      this.spheres = null;
    }
    else {
      if (initObj.hasOwnProperty('aabbs')) {
        this.aabbs = initObj.aabbs
      }
      else {
        this.aabbs = [];
      }
      if (initObj.hasOwnProperty('frustums')) {
        this.frustums = initObj.frustums
      }
      else {
        this.frustums = [];
      }
      if (initObj.hasOwnProperty('line_segments')) {
        this.line_segments = initObj.line_segments
      }
      else {
        this.line_segments = [];
      }
      if (initObj.hasOwnProperty('obbs')) {
        this.obbs = initObj.obbs
      }
      else {
        this.obbs = [];
      }
      if (initObj.hasOwnProperty('planes')) {
        this.planes = initObj.planes
      }
      else {
        this.planes = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('rays')) {
        this.rays = initObj.rays
      }
      else {
        this.rays = [];
      }
      if (initObj.hasOwnProperty('spheres')) {
        this.spheres = initObj.spheres
      }
      else {
        this.spheres = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingVolume
    // Serialize message field [aabbs]
    // Serialize the length for message field [aabbs]
    bufferOffset = _serializer.uint32(obj.aabbs.length, buffer, bufferOffset);
    obj.aabbs.forEach((val) => {
      bufferOffset = AABB.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [frustums]
    // Serialize the length for message field [frustums]
    bufferOffset = _serializer.uint32(obj.frustums.length, buffer, bufferOffset);
    obj.frustums.forEach((val) => {
      bufferOffset = Frustum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [line_segments]
    // Serialize the length for message field [line_segments]
    bufferOffset = _serializer.uint32(obj.line_segments.length, buffer, bufferOffset);
    obj.line_segments.forEach((val) => {
      bufferOffset = LineSegment.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obbs]
    // Serialize the length for message field [obbs]
    bufferOffset = _serializer.uint32(obj.obbs.length, buffer, bufferOffset);
    obj.obbs.forEach((val) => {
      bufferOffset = OBB.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [planes]
    // Serialize the length for message field [planes]
    bufferOffset = _serializer.uint32(obj.planes.length, buffer, bufferOffset);
    obj.planes.forEach((val) => {
      bufferOffset = Plane.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rays]
    // Serialize the length for message field [rays]
    bufferOffset = _serializer.uint32(obj.rays.length, buffer, bufferOffset);
    obj.rays.forEach((val) => {
      bufferOffset = Ray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [spheres]
    // Serialize the length for message field [spheres]
    bufferOffset = _serializer.uint32(obj.spheres.length, buffer, bufferOffset);
    obj.spheres.forEach((val) => {
      bufferOffset = Sphere.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingVolume
    let len;
    let data = new BoundingVolume(null);
    // Deserialize message field [aabbs]
    // Deserialize array length for message field [aabbs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.aabbs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.aabbs[i] = AABB.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [frustums]
    // Deserialize array length for message field [frustums]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frustums = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frustums[i] = Frustum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [line_segments]
    // Deserialize array length for message field [line_segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_segments[i] = LineSegment.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obbs]
    // Deserialize array length for message field [obbs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obbs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obbs[i] = OBB.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [planes]
    // Deserialize array length for message field [planes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.planes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.planes[i] = Plane.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rays]
    // Deserialize array length for message field [rays]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rays = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rays[i] = Ray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [spheres]
    // Deserialize array length for message field [spheres]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.spheres = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.spheres[i] = Sphere.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.aabbs.length;
    length += 32 * object.frustums.length;
    length += 48 * object.line_segments.length;
    length += 72 * object.obbs.length;
    length += 32 * object.planes.length;
    length += 24 * object.points.length;
    length += 48 * object.rays.length;
    length += 32 * object.spheres.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ufomap_msgs/BoundingVolume';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82212eec286e703b5b3c33cc90377d90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ufomap_msgs/AABB[] aabbs
    
    # ufomap_msgs/Capsule[] capsules
    
    # ufomap_msgs/Cone[] cones
    
    # ufomap_msgs/Cylinder[] cylinders
    
    # ufomap_msgs/Ellipsoid[] ellipsoids
    
    ufomap_msgs/Frustum[] frustums
    
    ufomap_msgs/LineSegment[] line_segments
    
    ufomap_msgs/OBB[] obbs
    
    ufomap_msgs/Plane[] planes
    
    ufomap_msgs/Point[] points
    
    ufomap_msgs/Ray[] rays
    
    ufomap_msgs/Sphere[] spheres
    
    # ufomap_msgs/Triangle[] triangles
    ================================================================================
    MSG: ufomap_msgs/AABB
    ufomap_msgs/Point center
    
    ufomap_msgs/Point half_size
    ================================================================================
    MSG: ufomap_msgs/Point
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: ufomap_msgs/Frustum
    ufomap_msgs/Plane[6] planes
    ================================================================================
    MSG: ufomap_msgs/Plane
    ufomap_msgs/Point normal
    
    float64 distance
    ================================================================================
    MSG: ufomap_msgs/LineSegment
    ufomap_msgs/Point start
    
    ufomap_msgs/Point end
    ================================================================================
    MSG: ufomap_msgs/OBB
    ufomap_msgs/Point center
    
    ufomap_msgs/Point half_size
    
    ufomap_msgs/Point rotation
    ================================================================================
    MSG: ufomap_msgs/Ray
    ufomap_msgs/Point origin
    
    ufomap_msgs/Point direction
    ================================================================================
    MSG: ufomap_msgs/Sphere
    ufomap_msgs/Point center
    
    float64 radius
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingVolume(null);
    if (msg.aabbs !== undefined) {
      resolved.aabbs = new Array(msg.aabbs.length);
      for (let i = 0; i < resolved.aabbs.length; ++i) {
        resolved.aabbs[i] = AABB.Resolve(msg.aabbs[i]);
      }
    }
    else {
      resolved.aabbs = []
    }

    if (msg.frustums !== undefined) {
      resolved.frustums = new Array(msg.frustums.length);
      for (let i = 0; i < resolved.frustums.length; ++i) {
        resolved.frustums[i] = Frustum.Resolve(msg.frustums[i]);
      }
    }
    else {
      resolved.frustums = []
    }

    if (msg.line_segments !== undefined) {
      resolved.line_segments = new Array(msg.line_segments.length);
      for (let i = 0; i < resolved.line_segments.length; ++i) {
        resolved.line_segments[i] = LineSegment.Resolve(msg.line_segments[i]);
      }
    }
    else {
      resolved.line_segments = []
    }

    if (msg.obbs !== undefined) {
      resolved.obbs = new Array(msg.obbs.length);
      for (let i = 0; i < resolved.obbs.length; ++i) {
        resolved.obbs[i] = OBB.Resolve(msg.obbs[i]);
      }
    }
    else {
      resolved.obbs = []
    }

    if (msg.planes !== undefined) {
      resolved.planes = new Array(msg.planes.length);
      for (let i = 0; i < resolved.planes.length; ++i) {
        resolved.planes[i] = Plane.Resolve(msg.planes[i]);
      }
    }
    else {
      resolved.planes = []
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.rays !== undefined) {
      resolved.rays = new Array(msg.rays.length);
      for (let i = 0; i < resolved.rays.length; ++i) {
        resolved.rays[i] = Ray.Resolve(msg.rays[i]);
      }
    }
    else {
      resolved.rays = []
    }

    if (msg.spheres !== undefined) {
      resolved.spheres = new Array(msg.spheres.length);
      for (let i = 0; i < resolved.spheres.length; ++i) {
        resolved.spheres[i] = Sphere.Resolve(msg.spheres[i]);
      }
    }
    else {
      resolved.spheres = []
    }

    return resolved;
    }
};

module.exports = BoundingVolume;
