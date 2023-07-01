// Generated by gencpp from file my_robot_msgs/signal.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_SIGNAL_H
#define MY_ROBOT_MSGS_MESSAGE_SIGNAL_H

#include <ros/service_traits.h>


#include <my_robot_msgs/signalRequest.h>
#include <my_robot_msgs/signalResponse.h>


namespace my_robot_msgs
{

struct signal
{

typedef signalRequest Request;
typedef signalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct signal
} // namespace my_robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_robot_msgs::signal > {
  static const char* value()
  {
    return "f69cbcdad8e751aa0b4f314d7baa16e8";
  }

  static const char* value(const ::my_robot_msgs::signal&) { return value(); }
};

template<>
struct DataType< ::my_robot_msgs::signal > {
  static const char* value()
  {
    return "my_robot_msgs/signal";
  }

  static const char* value(const ::my_robot_msgs::signal&) { return value(); }
};


// service_traits::MD5Sum< ::my_robot_msgs::signalRequest> should match
// service_traits::MD5Sum< ::my_robot_msgs::signal >
template<>
struct MD5Sum< ::my_robot_msgs::signalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_robot_msgs::signal >::value();
  }
  static const char* value(const ::my_robot_msgs::signalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_robot_msgs::signalRequest> should match
// service_traits::DataType< ::my_robot_msgs::signal >
template<>
struct DataType< ::my_robot_msgs::signalRequest>
{
  static const char* value()
  {
    return DataType< ::my_robot_msgs::signal >::value();
  }
  static const char* value(const ::my_robot_msgs::signalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_robot_msgs::signalResponse> should match
// service_traits::MD5Sum< ::my_robot_msgs::signal >
template<>
struct MD5Sum< ::my_robot_msgs::signalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_robot_msgs::signal >::value();
  }
  static const char* value(const ::my_robot_msgs::signalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_robot_msgs::signalResponse> should match
// service_traits::DataType< ::my_robot_msgs::signal >
template<>
struct DataType< ::my_robot_msgs::signalResponse>
{
  static const char* value()
  {
    return DataType< ::my_robot_msgs::signal >::value();
  }
  static const char* value(const ::my_robot_msgs::signalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_SIGNAL_H
