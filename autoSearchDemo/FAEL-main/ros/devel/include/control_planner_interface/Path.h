// Generated by gencpp from file control_planner_interface/Path.msg
// DO NOT EDIT!


#ifndef CONTROL_PLANNER_INTERFACE_MESSAGE_PATH_H
#define CONTROL_PLANNER_INTERFACE_MESSAGE_PATH_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace control_planner_interface
{
template <class ContainerAllocator>
struct Path_
{
  typedef Path_<ContainerAllocator> Type;

  Path_()
    : path()  {
    }
  Path_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Pose_<ContainerAllocator> >> _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::control_planner_interface::Path_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::control_planner_interface::Path_<ContainerAllocator> const> ConstPtr;

}; // struct Path_

typedef ::control_planner_interface::Path_<std::allocator<void> > Path;

typedef boost::shared_ptr< ::control_planner_interface::Path > PathPtr;
typedef boost::shared_ptr< ::control_planner_interface::Path const> PathConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::control_planner_interface::Path_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::control_planner_interface::Path_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::control_planner_interface::Path_<ContainerAllocator1> & lhs, const ::control_planner_interface::Path_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::control_planner_interface::Path_<ContainerAllocator1> & lhs, const ::control_planner_interface::Path_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace control_planner_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::control_planner_interface::Path_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control_planner_interface::Path_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control_planner_interface::Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control_planner_interface::Path_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_planner_interface::Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_planner_interface::Path_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::control_planner_interface::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3672a680f9a8e1a187c20ffb2e3a206b";
  }

  static const char* value(const ::control_planner_interface::Path_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3672a680f9a8e1a1ULL;
  static const uint64_t static_value2 = 0x87c20ffb2e3a206bULL;
};

template<class ContainerAllocator>
struct DataType< ::control_planner_interface::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "control_planner_interface/Path";
  }

  static const char* value(const ::control_planner_interface::Path_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::control_planner_interface::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose[] path\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::control_planner_interface::Path_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::control_planner_interface::Path_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Path_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::control_planner_interface::Path_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::control_planner_interface::Path_<ContainerAllocator>& v)
  {
    s << indent << "path[]" << std::endl;
    for (size_t i = 0; i < v.path.size(); ++i)
    {
      s << indent << "  path[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.path[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROL_PLANNER_INTERFACE_MESSAGE_PATH_H