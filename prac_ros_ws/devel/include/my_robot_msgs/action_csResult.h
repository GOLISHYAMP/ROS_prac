// Generated by gencpp from file my_robot_msgs/action_csResult.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_ACTION_CSRESULT_H
#define MY_ROBOT_MSGS_MESSAGE_ACTION_CSRESULT_H


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
struct action_csResult_
{
  typedef action_csResult_<ContainerAllocator> Type;

  action_csResult_()
    : str()  {
    }
  action_csResult_(const ContainerAllocator& _alloc)
    : str(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _str_type;
  _str_type str;





  typedef boost::shared_ptr< ::my_robot_msgs::action_csResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::action_csResult_<ContainerAllocator> const> ConstPtr;

}; // struct action_csResult_

typedef ::my_robot_msgs::action_csResult_<std::allocator<void> > action_csResult;

typedef boost::shared_ptr< ::my_robot_msgs::action_csResult > action_csResultPtr;
typedef boost::shared_ptr< ::my_robot_msgs::action_csResult const> action_csResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::action_csResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::action_csResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::action_csResult_<ContainerAllocator1> & lhs, const ::my_robot_msgs::action_csResult_<ContainerAllocator2> & rhs)
{
  return lhs.str == rhs.str;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::action_csResult_<ContainerAllocator1> & lhs, const ::my_robot_msgs::action_csResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::action_csResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::action_csResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::action_csResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "994972b6e03928b2476860ce6c4c8e17";
  }

  static const char* value(const ::my_robot_msgs::action_csResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x994972b6e03928b2ULL;
  static const uint64_t static_value2 = 0x476860ce6c4c8e17ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/action_csResult";
  }

  static const char* value(const ::my_robot_msgs::action_csResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result\n"
"string str\n"
;
  }

  static const char* value(const ::my_robot_msgs::action_csResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.str);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct action_csResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::action_csResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::action_csResult_<ContainerAllocator>& v)
  {
    s << indent << "str: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.str);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_ACTION_CSRESULT_H
