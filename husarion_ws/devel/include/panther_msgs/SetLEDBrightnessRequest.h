// Generated by gencpp from file panther_msgs/SetLEDBrightnessRequest.msg
// DO NOT EDIT!


#ifndef PANTHER_MSGS_MESSAGE_SETLEDBRIGHTNESSREQUEST_H
#define PANTHER_MSGS_MESSAGE_SETLEDBRIGHTNESSREQUEST_H


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
struct SetLEDBrightnessRequest_
{
  typedef SetLEDBrightnessRequest_<ContainerAllocator> Type;

  SetLEDBrightnessRequest_()
    : data(0.0)  {
    }
  SetLEDBrightnessRequest_(const ContainerAllocator& _alloc)
    : data(0.0)  {
  (void)_alloc;
    }



   typedef float _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetLEDBrightnessRequest_

typedef ::panther_msgs::SetLEDBrightnessRequest_<std::allocator<void> > SetLEDBrightnessRequest;

typedef boost::shared_ptr< ::panther_msgs::SetLEDBrightnessRequest > SetLEDBrightnessRequestPtr;
typedef boost::shared_ptr< ::panther_msgs::SetLEDBrightnessRequest const> SetLEDBrightnessRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator1> & lhs, const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator1> & lhs, const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace panther_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "73fcbf46b49191e672908e50842a83d4";
  }

  static const char* value(const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x73fcbf46b49191e6ULL;
  static const uint64_t static_value2 = 0x72908e50842a83d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "panther_msgs/SetLEDBrightnessRequest";
  }

  static const char* value(const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 data\n"
;
  }

  static const char* value(const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLEDBrightnessRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::panther_msgs::SetLEDBrightnessRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<float>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PANTHER_MSGS_MESSAGE_SETLEDBRIGHTNESSREQUEST_H
