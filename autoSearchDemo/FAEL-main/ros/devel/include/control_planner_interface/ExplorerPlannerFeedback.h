// Generated by gencpp from file control_planner_interface/ExplorerPlannerFeedback.msg
// DO NOT EDIT!


#ifndef CONTROL_PLANNER_INTERFACE_MESSAGE_EXPLORERPLANNERFEEDBACK_H
#define CONTROL_PLANNER_INTERFACE_MESSAGE_EXPLORERPLANNERFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace control_planner_interface
{
template <class ContainerAllocator>
struct ExplorerPlannerFeedback_
{
  typedef ExplorerPlannerFeedback_<ContainerAllocator> Type;

  ExplorerPlannerFeedback_()
    : is_get_path(false)  {
    }
  ExplorerPlannerFeedback_(const ContainerAllocator& _alloc)
    : is_get_path(false)  {
  (void)_alloc;
    }



   typedef uint8_t _is_get_path_type;
  _is_get_path_type is_get_path;





  typedef boost::shared_ptr< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct ExplorerPlannerFeedback_

typedef ::control_planner_interface::ExplorerPlannerFeedback_<std::allocator<void> > ExplorerPlannerFeedback;

typedef boost::shared_ptr< ::control_planner_interface::ExplorerPlannerFeedback > ExplorerPlannerFeedbackPtr;
typedef boost::shared_ptr< ::control_planner_interface::ExplorerPlannerFeedback const> ExplorerPlannerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator1> & lhs, const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.is_get_path == rhs.is_get_path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator1> & lhs, const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace control_planner_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "26cf06fccc0ce6cdf56b8730dc1b64bc";
  }

  static const char* value(const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x26cf06fccc0ce6cdULL;
  static const uint64_t static_value2 = 0xf56b8730dc1b64bcULL;
};

template<class ContainerAllocator>
struct DataType< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "control_planner_interface/ExplorerPlannerFeedback";
  }

  static const char* value(const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"bool is_get_path\n"
;
  }

  static const char* value(const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_get_path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExplorerPlannerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::control_planner_interface::ExplorerPlannerFeedback_<ContainerAllocator>& v)
  {
    s << indent << "is_get_path: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_get_path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROL_PLANNER_INTERFACE_MESSAGE_EXPLORERPLANNERFEEDBACK_H
