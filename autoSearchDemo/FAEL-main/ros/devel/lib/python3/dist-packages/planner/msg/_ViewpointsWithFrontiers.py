# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planner/ViewpointsWithFrontiers.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import ufomap_manager.msg

class ViewpointsWithFrontiers(genpy.Message):
  _md5sum = "52c4c3a872cbd5edd9e44ac6b909d63c"
  _type = "planner/ViewpointsWithFrontiers"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
geometry_msgs/Point view_point
ufomap_manager/CellCode[] frontiers
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: ufomap_manager/CellCode
uint32 depth
uint64 Code
"""
  __slots__ = ['view_point','frontiers']
  _slot_types = ['geometry_msgs/Point','ufomap_manager/CellCode[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       view_point,frontiers

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ViewpointsWithFrontiers, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.view_point is None:
        self.view_point = geometry_msgs.msg.Point()
      if self.frontiers is None:
        self.frontiers = []
    else:
      self.view_point = geometry_msgs.msg.Point()
      self.frontiers = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3d().pack(_x.view_point.x, _x.view_point.y, _x.view_point.z))
      length = len(self.frontiers)
      buff.write(_struct_I.pack(length))
      for val1 in self.frontiers:
        _x = val1
        buff.write(_get_struct_IQ().pack(_x.depth, _x.Code))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.view_point is None:
        self.view_point = geometry_msgs.msg.Point()
      if self.frontiers is None:
        self.frontiers = None
      end = 0
      _x = self
      start = end
      end += 24
      (_x.view_point.x, _x.view_point.y, _x.view_point.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frontiers = []
      for i in range(0, length):
        val1 = ufomap_manager.msg.CellCode()
        _x = val1
        start = end
        end += 12
        (_x.depth, _x.Code,) = _get_struct_IQ().unpack(str[start:end])
        self.frontiers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3d().pack(_x.view_point.x, _x.view_point.y, _x.view_point.z))
      length = len(self.frontiers)
      buff.write(_struct_I.pack(length))
      for val1 in self.frontiers:
        _x = val1
        buff.write(_get_struct_IQ().pack(_x.depth, _x.Code))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.view_point is None:
        self.view_point = geometry_msgs.msg.Point()
      if self.frontiers is None:
        self.frontiers = None
      end = 0
      _x = self
      start = end
      end += 24
      (_x.view_point.x, _x.view_point.y, _x.view_point.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frontiers = []
      for i in range(0, length):
        val1 = ufomap_manager.msg.CellCode()
        _x = val1
        start = end
        end += 12
        (_x.depth, _x.Code,) = _get_struct_IQ().unpack(str[start:end])
        self.frontiers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_IQ = None
def _get_struct_IQ():
    global _struct_IQ
    if _struct_IQ is None:
        _struct_IQ = struct.Struct("<IQ")
    return _struct_IQ
