// Generated by gencpp from file my_robot_msgs/CountUntilFeedback.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_COUNTUNTILFEEDBACK_H
#define MY_ROBOT_MSGS_MESSAGE_COUNTUNTILFEEDBACK_H


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
struct CountUntilFeedback_
{
  typedef CountUntilFeedback_<ContainerAllocator> Type;

  CountUntilFeedback_()
    : percentage(0.0)  {
    }
  CountUntilFeedback_(const ContainerAllocator& _alloc)
    : percentage(0.0)  {
  (void)_alloc;
    }



   typedef double _percentage_type;
  _percentage_type percentage;





  typedef boost::shared_ptr< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct CountUntilFeedback_

typedef ::my_robot_msgs::CountUntilFeedback_<std::allocator<void> > CountUntilFeedback;

typedef boost::shared_ptr< ::my_robot_msgs::CountUntilFeedback > CountUntilFeedbackPtr;
typedef boost::shared_ptr< ::my_robot_msgs::CountUntilFeedback const> CountUntilFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator1> & lhs, const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.percentage == rhs.percentage;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator1> & lhs, const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46302a97c06fe5a4416c427fe6ee8804";
  }

  static const char* value(const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46302a97c06fe5a4ULL;
  static const uint64_t static_value2 = 0x416c427fe6ee8804ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/CountUntilFeedback";
  }

  static const char* value(const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"float64 percentage\n"
"\n"
;
  }

  static const char* value(const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percentage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CountUntilFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::CountUntilFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percentage: ";
    Printer<double>::stream(s, indent + "  ", v.percentage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_COUNTUNTILFEEDBACK_H
