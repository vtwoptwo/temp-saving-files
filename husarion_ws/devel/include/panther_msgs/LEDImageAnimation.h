// Generated by gencpp from file panther_msgs/LEDImageAnimation.msg
// DO NOT EDIT!


#ifndef PANTHER_MSGS_MESSAGE_LEDIMAGEANIMATION_H
#define PANTHER_MSGS_MESSAGE_LEDIMAGEANIMATION_H


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
struct LEDImageAnimation_
{
  typedef LEDImageAnimation_<ContainerAllocator> Type;

  LEDImageAnimation_()
    : image()
    , duration(0.0)
    , brightness(0.0)
    , repeat(0)
    , color(0)  {
    }
  LEDImageAnimation_(const ContainerAllocator& _alloc)
    : image(_alloc)
    , duration(0.0)
    , brightness(0.0)
    , repeat(0)
    , color(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _image_type;
  _image_type image;

   typedef float _duration_type;
  _duration_type duration;

   typedef float _brightness_type;
  _brightness_type brightness;

   typedef uint8_t _repeat_type;
  _repeat_type repeat;

   typedef uint32_t _color_type;
  _color_type color;





  typedef boost::shared_ptr< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> const> ConstPtr;

}; // struct LEDImageAnimation_

typedef ::panther_msgs::LEDImageAnimation_<std::allocator<void> > LEDImageAnimation;

typedef boost::shared_ptr< ::panther_msgs::LEDImageAnimation > LEDImageAnimationPtr;
typedef boost::shared_ptr< ::panther_msgs::LEDImageAnimation const> LEDImageAnimationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::panther_msgs::LEDImageAnimation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::panther_msgs::LEDImageAnimation_<ContainerAllocator1> & lhs, const ::panther_msgs::LEDImageAnimation_<ContainerAllocator2> & rhs)
{
  return lhs.image == rhs.image &&
    lhs.duration == rhs.duration &&
    lhs.brightness == rhs.brightness &&
    lhs.repeat == rhs.repeat &&
    lhs.color == rhs.color;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::panther_msgs::LEDImageAnimation_<ContainerAllocator1> & lhs, const ::panther_msgs::LEDImageAnimation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace panther_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e28603d00b7f8b45434019f01a6bcf71";
  }

  static const char* value(const ::panther_msgs::LEDImageAnimation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe28603d00b7f8b45ULL;
  static const uint64_t static_value2 = 0x434019f01a6bcf71ULL;
};

template<class ContainerAllocator>
struct DataType< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "panther_msgs/LEDImageAnimation";
  }

  static const char* value(const ::panther_msgs::LEDImageAnimation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string image\n"
"float32 duration\n"
"float32 brightness\n"
"uint8 repeat\n"
"uint32 color\n"
;
  }

  static const char* value(const ::panther_msgs::LEDImageAnimation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
      stream.next(m.duration);
      stream.next(m.brightness);
      stream.next(m.repeat);
      stream.next(m.color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LEDImageAnimation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::panther_msgs::LEDImageAnimation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::panther_msgs::LEDImageAnimation_<ContainerAllocator>& v)
  {
    s << indent << "image: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.image);
    s << indent << "duration: ";
    Printer<float>::stream(s, indent + "  ", v.duration);
    s << indent << "brightness: ";
    Printer<float>::stream(s, indent + "  ", v.brightness);
    s << indent << "repeat: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.repeat);
    s << indent << "color: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PANTHER_MSGS_MESSAGE_LEDIMAGEANIMATION_H
