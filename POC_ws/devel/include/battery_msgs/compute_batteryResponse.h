// Generated by gencpp from file battery_msgs/compute_batteryResponse.msg
// DO NOT EDIT!


#ifndef BATTERY_MSGS_MESSAGE_COMPUTE_BATTERYRESPONSE_H
#define BATTERY_MSGS_MESSAGE_COMPUTE_BATTERYRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace battery_msgs
{
template <class ContainerAllocator>
struct compute_batteryResponse_
{
  typedef compute_batteryResponse_<ContainerAllocator> Type;

  compute_batteryResponse_()
    : set(false)  {
    }
  compute_batteryResponse_(const ContainerAllocator& _alloc)
    : set(false)  {
  (void)_alloc;
    }



   typedef uint8_t _set_type;
  _set_type set;





  typedef boost::shared_ptr< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct compute_batteryResponse_

typedef ::battery_msgs::compute_batteryResponse_<std::allocator<void> > compute_batteryResponse;

typedef boost::shared_ptr< ::battery_msgs::compute_batteryResponse > compute_batteryResponsePtr;
typedef boost::shared_ptr< ::battery_msgs::compute_batteryResponse const> compute_batteryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::battery_msgs::compute_batteryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::battery_msgs::compute_batteryResponse_<ContainerAllocator1> & lhs, const ::battery_msgs::compute_batteryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.set == rhs.set;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::battery_msgs::compute_batteryResponse_<ContainerAllocator1> & lhs, const ::battery_msgs::compute_batteryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace battery_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "808640c210a75fd8f300baefe9cd8cec";
  }

  static const char* value(const ::battery_msgs::compute_batteryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x808640c210a75fd8ULL;
  static const uint64_t static_value2 = 0xf300baefe9cd8cecULL;
};

template<class ContainerAllocator>
struct DataType< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "battery_msgs/compute_batteryResponse";
  }

  static const char* value(const ::battery_msgs::compute_batteryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool set\n"
"\n"
;
  }

  static const char* value(const ::battery_msgs::compute_batteryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.set);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct compute_batteryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::battery_msgs::compute_batteryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::battery_msgs::compute_batteryResponse_<ContainerAllocator>& v)
  {
    s << indent << "set: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.set);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BATTERY_MSGS_MESSAGE_COMPUTE_BATTERYRESPONSE_H
