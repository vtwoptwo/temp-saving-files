// Generated by gencpp from file panther_msgs/SetLEDImageAnimation.msg
// DO NOT EDIT!


#ifndef PANTHER_MSGS_MESSAGE_SETLEDIMAGEANIMATION_H
#define PANTHER_MSGS_MESSAGE_SETLEDIMAGEANIMATION_H

#include <ros/service_traits.h>


#include <panther_msgs/SetLEDImageAnimationRequest.h>
#include <panther_msgs/SetLEDImageAnimationResponse.h>


namespace panther_msgs
{

struct SetLEDImageAnimation
{

typedef SetLEDImageAnimationRequest Request;
typedef SetLEDImageAnimationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLEDImageAnimation
} // namespace panther_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::panther_msgs::SetLEDImageAnimation > {
  static const char* value()
  {
    return "160476792cabdd0ac4f8a13800bc7d59";
  }

  static const char* value(const ::panther_msgs::SetLEDImageAnimation&) { return value(); }
};

template<>
struct DataType< ::panther_msgs::SetLEDImageAnimation > {
  static const char* value()
  {
    return "panther_msgs/SetLEDImageAnimation";
  }

  static const char* value(const ::panther_msgs::SetLEDImageAnimation&) { return value(); }
};


// service_traits::MD5Sum< ::panther_msgs::SetLEDImageAnimationRequest> should match
// service_traits::MD5Sum< ::panther_msgs::SetLEDImageAnimation >
template<>
struct MD5Sum< ::panther_msgs::SetLEDImageAnimationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::panther_msgs::SetLEDImageAnimation >::value();
  }
  static const char* value(const ::panther_msgs::SetLEDImageAnimationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::panther_msgs::SetLEDImageAnimationRequest> should match
// service_traits::DataType< ::panther_msgs::SetLEDImageAnimation >
template<>
struct DataType< ::panther_msgs::SetLEDImageAnimationRequest>
{
  static const char* value()
  {
    return DataType< ::panther_msgs::SetLEDImageAnimation >::value();
  }
  static const char* value(const ::panther_msgs::SetLEDImageAnimationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::panther_msgs::SetLEDImageAnimationResponse> should match
// service_traits::MD5Sum< ::panther_msgs::SetLEDImageAnimation >
template<>
struct MD5Sum< ::panther_msgs::SetLEDImageAnimationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::panther_msgs::SetLEDImageAnimation >::value();
  }
  static const char* value(const ::panther_msgs::SetLEDImageAnimationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::panther_msgs::SetLEDImageAnimationResponse> should match
// service_traits::DataType< ::panther_msgs::SetLEDImageAnimation >
template<>
struct DataType< ::panther_msgs::SetLEDImageAnimationResponse>
{
  static const char* value()
  {
    return DataType< ::panther_msgs::SetLEDImageAnimation >::value();
  }
  static const char* value(const ::panther_msgs::SetLEDImageAnimationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PANTHER_MSGS_MESSAGE_SETLEDIMAGEANIMATION_H
