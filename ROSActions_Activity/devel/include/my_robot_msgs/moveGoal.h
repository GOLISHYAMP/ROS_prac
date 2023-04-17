// Generated by gencpp from file my_robot_msgs/moveGoal.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_MOVEGOAL_H
#define MY_ROBOT_MSGS_MESSAGE_MOVEGOAL_H


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
struct moveGoal_
{
  typedef moveGoal_<ContainerAllocator> Type;

  moveGoal_()
    : position(0.0)
    , velocity(0.0)  {
    }
  moveGoal_(const ContainerAllocator& _alloc)
    : position(0.0)
    , velocity(0.0)  {
  (void)_alloc;
    }



   typedef double _position_type;
  _position_type position;

   typedef double _velocity_type;
  _velocity_type velocity;





  typedef boost::shared_ptr< ::my_robot_msgs::moveGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::moveGoal_<ContainerAllocator> const> ConstPtr;

}; // struct moveGoal_

typedef ::my_robot_msgs::moveGoal_<std::allocator<void> > moveGoal;

typedef boost::shared_ptr< ::my_robot_msgs::moveGoal > moveGoalPtr;
typedef boost::shared_ptr< ::my_robot_msgs::moveGoal const> moveGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::moveGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::moveGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::moveGoal_<ContainerAllocator1> & lhs, const ::my_robot_msgs::moveGoal_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::moveGoal_<ContainerAllocator1> & lhs, const ::my_robot_msgs::moveGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::moveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::moveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::moveGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e93a29ad38599eb859f8373c97a9fad3";
  }

  static const char* value(const ::my_robot_msgs::moveGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe93a29ad38599eb8ULL;
  static const uint64_t static_value2 = 0x59f8373c97a9fad3ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/moveGoal";
  }

  static const char* value(const ::my_robot_msgs::moveGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"float64 position\n"
"float64 velocity\n"
;
  }

  static const char* value(const ::my_robot_msgs::moveGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::moveGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::moveGoal_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<double>::stream(s, indent + "  ", v.position);
    s << indent << "velocity: ";
    Printer<double>::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_MOVEGOAL_H
