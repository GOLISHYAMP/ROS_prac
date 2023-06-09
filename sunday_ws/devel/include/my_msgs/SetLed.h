// Generated by gencpp from file my_msgs/SetLed.msg
// DO NOT EDIT!


#ifndef MY_MSGS_MESSAGE_SETLED_H
#define MY_MSGS_MESSAGE_SETLED_H

#include <ros/service_traits.h>


#include <my_msgs/SetLedRequest.h>
#include <my_msgs/SetLedResponse.h>


namespace my_msgs
{

struct SetLed
{

typedef SetLedRequest Request;
typedef SetLedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLed
} // namespace my_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_msgs::SetLed > {
  static const char* value()
  {
    return "e8496c88347754a203f587528efbd669";
  }

  static const char* value(const ::my_msgs::SetLed&) { return value(); }
};

template<>
struct DataType< ::my_msgs::SetLed > {
  static const char* value()
  {
    return "my_msgs/SetLed";
  }

  static const char* value(const ::my_msgs::SetLed&) { return value(); }
};


// service_traits::MD5Sum< ::my_msgs::SetLedRequest> should match
// service_traits::MD5Sum< ::my_msgs::SetLed >
template<>
struct MD5Sum< ::my_msgs::SetLedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_msgs::SetLed >::value();
  }
  static const char* value(const ::my_msgs::SetLedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_msgs::SetLedRequest> should match
// service_traits::DataType< ::my_msgs::SetLed >
template<>
struct DataType< ::my_msgs::SetLedRequest>
{
  static const char* value()
  {
    return DataType< ::my_msgs::SetLed >::value();
  }
  static const char* value(const ::my_msgs::SetLedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_msgs::SetLedResponse> should match
// service_traits::MD5Sum< ::my_msgs::SetLed >
template<>
struct MD5Sum< ::my_msgs::SetLedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_msgs::SetLed >::value();
  }
  static const char* value(const ::my_msgs::SetLedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_msgs::SetLedResponse> should match
// service_traits::DataType< ::my_msgs::SetLed >
template<>
struct DataType< ::my_msgs::SetLedResponse>
{
  static const char* value()
  {
    return DataType< ::my_msgs::SetLed >::value();
  }
  static const char* value(const ::my_msgs::SetLedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_MSGS_MESSAGE_SETLED_H
