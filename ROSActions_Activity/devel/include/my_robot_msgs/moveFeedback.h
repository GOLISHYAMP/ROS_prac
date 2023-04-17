// Generated by gencpp from file my_robot_msgs/moveFeedback.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_MOVEFEEDBACK_H
#define MY_ROBOT_MSGS_MESSAGE_MOVEFEEDBACK_H


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
struct moveFeedback_
{
  typedef moveFeedback_<ContainerAllocator> Type;

  moveFeedback_()
    : current_position(0.0)  {
    }
  moveFeedback_(const ContainerAllocator& _alloc)
    : current_position(0.0)  {
  (void)_alloc;
    }



   typedef double _current_position_type;
  _current_position_type current_position;





  typedef boost::shared_ptr< ::my_robot_msgs::moveFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::moveFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct moveFeedback_

typedef ::my_robot_msgs::moveFeedback_<std::allocator<void> > moveFeedback;

typedef boost::shared_ptr< ::my_robot_msgs::moveFeedback > moveFeedbackPtr;
typedef boost::shared_ptr< ::my_robot_msgs::moveFeedback const> moveFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::moveFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::moveFeedback_<ContainerAllocator1> & lhs, const ::my_robot_msgs::moveFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.current_position == rhs.current_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::moveFeedback_<ContainerAllocator1> & lhs, const ::my_robot_msgs::moveFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::moveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::moveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::moveFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec33e2052d46d95cbf67ffb2e2a5f076";
  }

  static const char* value(const ::my_robot_msgs::moveFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec33e2052d46d95cULL;
  static const uint64_t static_value2 = 0xbf67ffb2e2a5f076ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/moveFeedback";
  }

  static const char* value(const ::my_robot_msgs::moveFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result\n"
"float64 current_position\n"
"\n"
;
  }

  static const char* value(const ::my_robot_msgs::moveFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::moveFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::moveFeedback_<ContainerAllocator>& v)
  {
    s << indent << "current_position: ";
    Printer<double>::stream(s, indent + "  ", v.current_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_MOVEFEEDBACK_H
