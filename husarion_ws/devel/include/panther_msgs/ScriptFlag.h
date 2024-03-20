// Generated by gencpp from file panther_msgs/ScriptFlag.msg
// DO NOT EDIT!


#ifndef PANTHER_MSGS_MESSAGE_SCRIPTFLAG_H
#define PANTHER_MSGS_MESSAGE_SCRIPTFLAG_H


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
struct ScriptFlag_
{
  typedef ScriptFlag_<ContainerAllocator> Type;

  ScriptFlag_()
    : loop_error(false)
    , encoder_disconected(false)
    , amp_limiter(false)  {
    }
  ScriptFlag_(const ContainerAllocator& _alloc)
    : loop_error(false)
    , encoder_disconected(false)
    , amp_limiter(false)  {
  (void)_alloc;
    }



   typedef uint8_t _loop_error_type;
  _loop_error_type loop_error;

   typedef uint8_t _encoder_disconected_type;
  _encoder_disconected_type encoder_disconected;

   typedef uint8_t _amp_limiter_type;
  _amp_limiter_type amp_limiter;





  typedef boost::shared_ptr< ::panther_msgs::ScriptFlag_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::panther_msgs::ScriptFlag_<ContainerAllocator> const> ConstPtr;

}; // struct ScriptFlag_

typedef ::panther_msgs::ScriptFlag_<std::allocator<void> > ScriptFlag;

typedef boost::shared_ptr< ::panther_msgs::ScriptFlag > ScriptFlagPtr;
typedef boost::shared_ptr< ::panther_msgs::ScriptFlag const> ScriptFlagConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::panther_msgs::ScriptFlag_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::panther_msgs::ScriptFlag_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::panther_msgs::ScriptFlag_<ContainerAllocator1> & lhs, const ::panther_msgs::ScriptFlag_<ContainerAllocator2> & rhs)
{
  return lhs.loop_error == rhs.loop_error &&
    lhs.encoder_disconected == rhs.encoder_disconected &&
    lhs.amp_limiter == rhs.amp_limiter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::panther_msgs::ScriptFlag_<ContainerAllocator1> & lhs, const ::panther_msgs::ScriptFlag_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace panther_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::ScriptFlag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::ScriptFlag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::ScriptFlag_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1ae55fdaf677921141ec0c2b7cf5ef83";
  }

  static const char* value(const ::panther_msgs::ScriptFlag_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1ae55fdaf6779211ULL;
  static const uint64_t static_value2 = 0x41ec0c2b7cf5ef83ULL;
};

template<class ContainerAllocator>
struct DataType< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "panther_msgs/ScriptFlag";
  }

  static const char* value(const ::panther_msgs::ScriptFlag_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool loop_error\n"
"bool encoder_disconected\n"
"bool amp_limiter\n"
;
  }

  static const char* value(const ::panther_msgs::ScriptFlag_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.loop_error);
      stream.next(m.encoder_disconected);
      stream.next(m.amp_limiter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScriptFlag_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::panther_msgs::ScriptFlag_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::panther_msgs::ScriptFlag_<ContainerAllocator>& v)
  {
    s << indent << "loop_error: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.loop_error);
    s << indent << "encoder_disconected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.encoder_disconected);
    s << indent << "amp_limiter: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.amp_limiter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PANTHER_MSGS_MESSAGE_SCRIPTFLAG_H
