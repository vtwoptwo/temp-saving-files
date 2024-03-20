# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from panther_msgs/RuntimeError.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RuntimeError(genpy.Message):
  _md5sum = "6e114213d0c80320bc7a928841db326e"
  _type = "panther_msgs/RuntimeError"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool amps_limit_active
bool motor_stall
bool loop_error
bool safety_stop_active
bool forward_limit_triggered
bool reverse_limit_triggered
bool amps_trigger_activated"""
  __slots__ = ['amps_limit_active','motor_stall','loop_error','safety_stop_active','forward_limit_triggered','reverse_limit_triggered','amps_trigger_activated']
  _slot_types = ['bool','bool','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       amps_limit_active,motor_stall,loop_error,safety_stop_active,forward_limit_triggered,reverse_limit_triggered,amps_trigger_activated

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RuntimeError, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.amps_limit_active is None:
        self.amps_limit_active = False
      if self.motor_stall is None:
        self.motor_stall = False
      if self.loop_error is None:
        self.loop_error = False
      if self.safety_stop_active is None:
        self.safety_stop_active = False
      if self.forward_limit_triggered is None:
        self.forward_limit_triggered = False
      if self.reverse_limit_triggered is None:
        self.reverse_limit_triggered = False
      if self.amps_trigger_activated is None:
        self.amps_trigger_activated = False
    else:
      self.amps_limit_active = False
      self.motor_stall = False
      self.loop_error = False
      self.safety_stop_active = False
      self.forward_limit_triggered = False
      self.reverse_limit_triggered = False
      self.amps_trigger_activated = False

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
      buff.write(_get_struct_7B().pack(_x.amps_limit_active, _x.motor_stall, _x.loop_error, _x.safety_stop_active, _x.forward_limit_triggered, _x.reverse_limit_triggered, _x.amps_trigger_activated))
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
      end = 0
      _x = self
      start = end
      end += 7
      (_x.amps_limit_active, _x.motor_stall, _x.loop_error, _x.safety_stop_active, _x.forward_limit_triggered, _x.reverse_limit_triggered, _x.amps_trigger_activated,) = _get_struct_7B().unpack(str[start:end])
      self.amps_limit_active = bool(self.amps_limit_active)
      self.motor_stall = bool(self.motor_stall)
      self.loop_error = bool(self.loop_error)
      self.safety_stop_active = bool(self.safety_stop_active)
      self.forward_limit_triggered = bool(self.forward_limit_triggered)
      self.reverse_limit_triggered = bool(self.reverse_limit_triggered)
      self.amps_trigger_activated = bool(self.amps_trigger_activated)
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
      buff.write(_get_struct_7B().pack(_x.amps_limit_active, _x.motor_stall, _x.loop_error, _x.safety_stop_active, _x.forward_limit_triggered, _x.reverse_limit_triggered, _x.amps_trigger_activated))
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
      end = 0
      _x = self
      start = end
      end += 7
      (_x.amps_limit_active, _x.motor_stall, _x.loop_error, _x.safety_stop_active, _x.forward_limit_triggered, _x.reverse_limit_triggered, _x.amps_trigger_activated,) = _get_struct_7B().unpack(str[start:end])
      self.amps_limit_active = bool(self.amps_limit_active)
      self.motor_stall = bool(self.motor_stall)
      self.loop_error = bool(self.loop_error)
      self.safety_stop_active = bool(self.safety_stop_active)
      self.forward_limit_triggered = bool(self.forward_limit_triggered)
      self.reverse_limit_triggered = bool(self.reverse_limit_triggered)
      self.amps_trigger_activated = bool(self.amps_trigger_activated)
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
