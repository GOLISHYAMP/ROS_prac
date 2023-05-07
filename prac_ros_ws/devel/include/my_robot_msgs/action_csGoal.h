// Generated by gencpp from file my_robot_msgs/action_csGoal.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_ACTION_CSGOAL_H
#define MY_ROBOT_MSGS_MESSAGE_ACTION_CSGOAL_H


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
struct action_csGoal_
{
  typedef action_csGoal_<ContainerAllocator> Type;

  action_csGoal_()
    : num(0)  {
    }
  action_csGoal_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef int64_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::my_robot_msgs::action_csGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::action_csGoal_<ContainerAllocator> const> ConstPtr;

}; // struct action_csGoal_

typedef ::my_robot_msgs::action_csGoal_<std::allocator<void> > action_csGoal;

typedef boost::shared_ptr< ::my_robot_msgs::action_csGoal > action_csGoalPtr;
typedef boost::shared_ptr< ::my_robot_msgs::action_csGoal const> action_csGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::action_csGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::action_csGoal_<ContainerAllocator1> & lhs, const ::my_robot_msgs::action_csGoal_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::action_csGoal_<ContainerAllocator1> & lhs, const ::my_robot_msgs::action_csGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::action_csGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::action_csGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::action_csGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "57d3c40ec3ac3754af76a83e6e73127a";
  }

  static const char* value(const ::my_robot_msgs::action_csGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x57d3c40ec3ac3754ULL;
  static const uint64_t static_value2 = 0xaf76a83e6e73127aULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/action_csGoal";
  }

  static const char* value(const ::my_robot_msgs::action_csGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"int64 num\n"
;
  }

  static const char* value(const ::my_robot_msgs::action_csGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct action_csGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::action_csGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::action_csGoal_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_ACTION_CSGOAL_H
