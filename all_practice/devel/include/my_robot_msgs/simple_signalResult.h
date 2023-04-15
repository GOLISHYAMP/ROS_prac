// Generated by gencpp from file my_robot_msgs/simple_signalResult.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_SIMPLE_SIGNALRESULT_H
#define MY_ROBOT_MSGS_MESSAGE_SIMPLE_SIGNALRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_robot_msgs
{
template <class ContainerAllocator>
struct simple_signalResult_
{
  typedef simple_signalResult_<ContainerAllocator> Type;

  simple_signalResult_()
    : waited_duration(0)  {
    }
  simple_signalResult_(const ContainerAllocator& _alloc)
    : waited_duration(0)  {
  (void)_alloc;
    }



   typedef int64_t _waited_duration_type;
  _waited_duration_type waited_duration;





  typedef boost::shared_ptr< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> const> ConstPtr;

}; // struct simple_signalResult_

typedef ::my_robot_msgs::simple_signalResult_<std::allocator<void> > simple_signalResult;

typedef boost::shared_ptr< ::my_robot_msgs::simple_signalResult > simple_signalResultPtr;
typedef boost::shared_ptr< ::my_robot_msgs::simple_signalResult const> simple_signalResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::simple_signalResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::simple_signalResult_<ContainerAllocator1> & lhs, const ::my_robot_msgs::simple_signalResult_<ContainerAllocator2> & rhs)
{
  return lhs.waited_duration == rhs.waited_duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::simple_signalResult_<ContainerAllocator1> & lhs, const ::my_robot_msgs::simple_signalResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e61c59ff9e457607cf80eb990f19d4d3";
  }

  static const char* value(const ::my_robot_msgs::simple_signalResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe61c59ff9e457607ULL;
  static const uint64_t static_value2 = 0xcf80eb990f19d4d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/simple_signalResult";
  }

  static const char* value(const ::my_robot_msgs::simple_signalResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result\n"
"int64 waited_duration\n"
;
  }

  static const char* value(const ::my_robot_msgs::simple_signalResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waited_duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct simple_signalResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::simple_signalResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::simple_signalResult_<ContainerAllocator>& v)
  {
    s << indent << "waited_duration: ";
    Printer<int64_t>::stream(s, indent + "  ", v.waited_duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_SIMPLE_SIGNALRESULT_H
