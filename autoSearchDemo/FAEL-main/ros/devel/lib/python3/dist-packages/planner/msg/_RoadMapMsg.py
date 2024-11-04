# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planner/RoadMapMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import planner.msg

class RoadMapMsg(genpy.Message):
  _md5sum = "29d560d0f11813d6df50b9dbb4c10ec2"
  _type = "planner/RoadMapMsg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
IdPointPair[] id_point_pair_list
EdgePair[] edge_pair_list
================================================================================
MSG: planner/IdPointPair
int32 id
geometry_msgs/Point point
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: planner/EdgePair

int32 edge_id
IdPointPair begin_point
IdPointPair end_point"""
  __slots__ = ['id_point_pair_list','edge_pair_list']
  _slot_types = ['planner/IdPointPair[]','planner/EdgePair[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id_point_pair_list,edge_pair_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RoadMapMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id_point_pair_list is None:
        self.id_point_pair_list = []
      if self.edge_pair_list is None:
        self.edge_pair_list = []
    else:
      self.id_point_pair_list = []
      self.edge_pair_list = []

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
      length = len(self.id_point_pair_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.id_point_pair_list:
        _x = val1.id
        buff.write(_get_struct_i().pack(_x))
        _v1 = val1.point
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.edge_pair_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.edge_pair_list:
        _x = val1.edge_id
        buff.write(_get_struct_i().pack(_x))
        _v2 = val1.begin_point
        _x = _v2.id
        buff.write(_get_struct_i().pack(_x))
        _v3 = _v2.point
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = val1.end_point
        _x = _v4.id
        buff.write(_get_struct_i().pack(_x))
        _v5 = _v4.point
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
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
      if self.id_point_pair_list is None:
        self.id_point_pair_list = None
      if self.edge_pair_list is None:
        self.edge_pair_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.id_point_pair_list = []
      for i in range(0, length):
        val1 = planner.msg.IdPointPair()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v6 = val1.point
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.id_point_pair_list.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.edge_pair_list = []
      for i in range(0, length):
        val1 = planner.msg.EdgePair()
        start = end
        end += 4
        (val1.edge_id,) = _get_struct_i().unpack(str[start:end])
        _v7 = val1.begin_point
        start = end
        end += 4
        (_v7.id,) = _get_struct_i().unpack(str[start:end])
        _v8 = _v7.point
        _x = _v8
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v9 = val1.end_point
        start = end
        end += 4
        (_v9.id,) = _get_struct_i().unpack(str[start:end])
        _v10 = _v9.point
        _x = _v10
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.edge_pair_list.append(val1)
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
      length = len(self.id_point_pair_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.id_point_pair_list:
        _x = val1.id
        buff.write(_get_struct_i().pack(_x))
        _v11 = val1.point
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.edge_pair_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.edge_pair_list:
        _x = val1.edge_id
        buff.write(_get_struct_i().pack(_x))
        _v12 = val1.begin_point
        _x = _v12.id
        buff.write(_get_struct_i().pack(_x))
        _v13 = _v12.point
        _x = _v13
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v14 = val1.end_point
        _x = _v14.id
        buff.write(_get_struct_i().pack(_x))
        _v15 = _v14.point
        _x = _v15
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
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
      if self.id_point_pair_list is None:
        self.id_point_pair_list = None
      if self.edge_pair_list is None:
        self.edge_pair_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.id_point_pair_list = []
      for i in range(0, length):
        val1 = planner.msg.IdPointPair()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v16 = val1.point
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.id_point_pair_list.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.edge_pair_list = []
      for i in range(0, length):
        val1 = planner.msg.EdgePair()
        start = end
        end += 4
        (val1.edge_id,) = _get_struct_i().unpack(str[start:end])
        _v17 = val1.begin_point
        start = end
        end += 4
        (_v17.id,) = _get_struct_i().unpack(str[start:end])
        _v18 = _v17.point
        _x = _v18
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v19 = val1.end_point
        start = end
        end += 4
        (_v19.id,) = _get_struct_i().unpack(str[start:end])
        _v20 = _v19.point
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.edge_pair_list.append(val1)
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
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i