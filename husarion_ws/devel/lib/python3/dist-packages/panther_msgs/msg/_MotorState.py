# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from panther_msgs/MotorState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import panther_msgs.msg

class MotorState(genpy.Message):
  _md5sum = "77b28dab8f3bd880daefbd7dfd1955e8"
  _type = "panther_msgs/MotorState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string motor_joint_name
panther_msgs/RuntimeError runtime_error
================================================================================
MSG: panther_msgs/RuntimeError
bool amps_limit_active
bool motor_stall
bool loop_error
bool safety_stop_active
bool forward_limit_triggered
bool reverse_limit_triggered
bool amps_trigger_activated"""
  __slots__ = ['motor_joint_name','runtime_error']
  _slot_types = ['string','panther_msgs/RuntimeError']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       motor_joint_name,runtime_error

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotorState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.motor_joint_name is None:
        self.motor_joint_name = ''
      if self.runtime_error is None:
        self.runtime_error = panther_msgs.msg.RuntimeError()
    else:
      self.motor_joint_name = ''
      self.runtime_error = panther_msgs.msg.RuntimeError()

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
      _x = self.motor_joint_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7B().pack(_x.runtime_error.amps_limit_active, _x.runtime_error.motor_stall, _x.runtime_error.loop_error, _x.runtime_error.safety_stop_active, _x.runtime_error.forward_limit_triggered, _x.runtime_error.reverse_limit_triggered, _x.runtime_error.amps_trigger_activated))
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
      if self.runtime_error is None:
        self.runtime_error = panther_msgs.msg.RuntimeError()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.motor_joint_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.motor_joint_name = str[start:end]
      _x = self
      start = end
      end += 7
      (_x.runtime_error.amps_limit_active, _x.runtime_error.motor_stall, _x.runtime_error.loop_error, _x.runtime_error.safety_stop_active, _x.runtime_error.forward_limit_triggered, _x.runtime_error.reverse_limit_triggered, _x.runtime_error.amps_trigger_activated,) = _get_struct_7B().unpack(str[start:end])
      self.runtime_error.amps_limit_active = bool(self.runtime_error.amps_limit_active)
      self.runtime_error.motor_stall = bool(self.runtime_error.motor_stall)
      self.runtime_error.loop_error = bool(self.runtime_error.loop_error)
      self.runtime_error.safety_stop_active = bool(self.runtime_error.safety_stop_active)
      self.runtime_error.forward_limit_triggered = bool(self.runtime_error.forward_limit_triggered)
      self.runtime_error.reverse_limit_triggered = bool(self.runtime_error.reverse_limit_triggered)
      self.runtime_error.amps_trigger_activated = bool(self.runtime_error.amps_trigger_activated)
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
      _x = self.motor_joint_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7B().pack(_x.runtime_error.amps_limit_active, _x.runtime_error.motor_stall, _x.runtime_error.loop_error, _x.runtime_error.safety_stop_active, _x.runtime_error.forward_limit_triggered, _x.runtime_error.reverse_limit_triggered, _x.runtime_error.amps_trigger_activated))
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
      if self.runtime_error is None:
        self.runtime_error = panther_msgs.msg.RuntimeError()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.motor_joint_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.motor_joint_name = str[start:end]
      _x = self
      start = end
      end += 7
      (_x.runtime_error.amps_limit_active, _x.runtime_error.motor_stall, _x.runtime_error.loop_error, _x.runtime_error.safety_stop_active, _x.runtime_error.forward_limit_triggered, _x.runtime_error.reverse_limit_triggered, _x.runtime_error.amps_trigger_activated,) = _get_struct_7B().unpack(str[start:end])
      self.runtime_error.amps_limit_active = bool(self.runtime_error.amps_limit_active)
      self.runtime_error.motor_stall = bool(self.runtime_error.motor_stall)
      self.runtime_error.loop_error = bool(self.runtime_error.loop_error)
      self.runtime_error.safety_stop_active = bool(self.runtime_error.safety_stop_active)
      self.runtime_error.forward_limit_triggered = bool(self.runtime_error.forward_limit_triggered)
      self.runtime_error.reverse_limit_triggered = bool(self.runtime_error.reverse_limit_triggered)
      self.runtime_error.amps_trigger_activated = bool(self.runtime_error.amps_trigger_activated)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7B = None
def _get_struct_7B():
    global _struct_7B
    if _struct_7B is None:
        _struct_7B = struct.Struct("<7B")
    return _struct_7B
