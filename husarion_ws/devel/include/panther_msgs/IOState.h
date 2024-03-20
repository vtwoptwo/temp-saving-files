// Generated by gencpp from file panther_msgs/IOState.msg
// DO NOT EDIT!


#ifndef PANTHER_MSGS_MESSAGE_IOSTATE_H
#define PANTHER_MSGS_MESSAGE_IOSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace panther_msgs
{
template <class ContainerAllocator>
struct IOState_
{
  typedef IOState_<ContainerAllocator> Type;

  IOState_()
    : aux_power(false)
    , charger_connected(false)
    , charger_enabled(false)
    , digital_power(false)
    , fan(false)
    , motor_power(false)
    , power_button(false)  {
    }
  IOState_(const ContainerAllocator& _alloc)
    : aux_power(false)
    , charger_connected(false)
    , charger_enabled(false)
    , digital_power(false)
    , fan(false)
    , motor_power(false)
    , power_button(false)  {
  (void)_alloc;
    }



   typedef uint8_t _aux_power_type;
  _aux_power_type aux_power;

   typedef uint8_t _charger_connected_type;
  _charger_connected_type charger_connected;

   typedef uint8_t _charger_enabled_type;
  _charger_enabled_type charger_enabled;

   typedef uint8_t _digital_power_type;
  _digital_power_type digital_power;

   typedef uint8_t _fan_type;
  _fan_type fan;

   typedef uint8_t _motor_power_type;
  _motor_power_type motor_power;

   typedef uint8_t _power_button_type;
  _power_button_type power_button;





  typedef boost::shared_ptr< ::panther_msgs::IOState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::panther_msgs::IOState_<ContainerAllocator> const> ConstPtr;

}; // struct IOState_

typedef ::panther_msgs::IOState_<std::allocator<void> > IOState;

typedef boost::shared_ptr< ::panther_msgs::IOState > IOStatePtr;
typedef boost::shared_ptr< ::panther_msgs::IOState const> IOStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::panther_msgs::IOState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::panther_msgs::IOState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::panther_msgs::IOState_<ContainerAllocator1> & lhs, const ::panther_msgs::IOState_<ContainerAllocator2> & rhs)
{
  return lhs.aux_power == rhs.aux_power &&
    lhs.charger_connected == rhs.charger_connected &&
    lhs.charger_enabled == rhs.charger_enabled &&
    lhs.digital_power == rhs.digital_power &&
    lhs.fan == rhs.fan &&
    lhs.motor_power == rhs.motor_power &&
    lhs.power_button == rhs.power_button;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::panther_msgs::IOState_<ContainerAllocator1> & lhs, const ::panther_msgs::IOState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace panther_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::IOState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::IOState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::IOState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::IOState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::IOState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::IOState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::panther_msgs::IOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9355949f9d224eb1c84d18ab411d0e55";
  }

  static const char* value(const ::panther_msgs::IOState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9355949f9d224eb1ULL;
  static const uint64_t static_value2 = 0xc84d18ab411d0e55ULL;
};

template<class ContainerAllocator>
struct DataType< ::panther_msgs::IOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "panther_msgs/IOState";
  }

  static const char* value(const ::panther_msgs::IOState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::panther_msgs::IOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool aux_power\n"
"bool charger_connected\n"
"bool charger_enabled\n"
"bool digital_power\n"
"bool fan\n"
"bool motor_power\n"
"bool power_button\n"
;
  }

  static const char* value(const ::panther_msgs::IOState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::panther_msgs::IOState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.aux_power);
      stream.next(m.charger_connected);
      stream.next(m.charger_enabled);
      stream.next(m.digital_power);
      stream.next(m.fan);
      stream.next(m.motor_power);
      stream.next(m.power_button);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IOState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::panther_msgs::IOState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::panther_msgs::IOState_<ContainerAllocator>& v)
  {
    s << indent << "aux_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.aux_power);
    s << indent << "charger_connected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.charger_connected);
    s << indent << "charger_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.charger_enabled);
    s << indent << "digital_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.digital_power);
    s << indent << "fan: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fan);
    s << indent << "motor_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor_power);
    s << indent << "power_button: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power_button);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PANTHER_MSGS_MESSAGE_IOSTATE_H
