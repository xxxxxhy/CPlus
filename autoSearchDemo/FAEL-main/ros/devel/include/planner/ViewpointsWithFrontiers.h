// Generated by gencpp from file planner/ViewpointsWithFrontiers.msg
// DO NOT EDIT!


#ifndef PLANNER_MESSAGE_VIEWPOINTSWITHFRONTIERS_H
#define PLANNER_MESSAGE_VIEWPOINTSWITHFRONTIERS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <ufomap_manager/CellCode.h>

namespace planner
{
template <class ContainerAllocator>
struct ViewpointsWithFrontiers_
{
  typedef ViewpointsWithFrontiers_<ContainerAllocator> Type;

  ViewpointsWithFrontiers_()
    : view_point()
    , frontiers()  {
    }
  ViewpointsWithFrontiers_(const ContainerAllocator& _alloc)
    : view_point(_alloc)
    , frontiers(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _view_point_type;
  _view_point_type view_point;

   typedef std::vector< ::ufomap_manager::CellCode_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ufomap_manager::CellCode_<ContainerAllocator> >> _frontiers_type;
  _frontiers_type frontiers;





  typedef boost::shared_ptr< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> const> ConstPtr;

}; // struct ViewpointsWithFrontiers_

typedef ::planner::ViewpointsWithFrontiers_<std::allocator<void> > ViewpointsWithFrontiers;

typedef boost::shared_ptr< ::planner::ViewpointsWithFrontiers > ViewpointsWithFrontiersPtr;
typedef boost::shared_ptr< ::planner::ViewpointsWithFrontiers const> ViewpointsWithFrontiersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planner::ViewpointsWithFrontiers_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planner::ViewpointsWithFrontiers_<ContainerAllocator1> & lhs, const ::planner::ViewpointsWithFrontiers_<ContainerAllocator2> & rhs)
{
  return lhs.view_point == rhs.view_point &&
    lhs.frontiers == rhs.frontiers;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planner::ViewpointsWithFrontiers_<ContainerAllocator1> & lhs, const ::planner::ViewpointsWithFrontiers_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planner

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "52c4c3a872cbd5edd9e44ac6b909d63c";
  }

  static const char* value(const ::planner::ViewpointsWithFrontiers_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x52c4c3a872cbd5edULL;
  static const uint64_t static_value2 = 0xd9e44ac6b909d63cULL;
};

template<class ContainerAllocator>
struct DataType< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planner/ViewpointsWithFrontiers";
  }

  static const char* value(const ::planner::ViewpointsWithFrontiers_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"geometry_msgs/Point view_point\n"
"ufomap_manager/CellCode[] frontiers\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: ufomap_manager/CellCode\n"
"uint32 depth\n"
"uint64 Code\n"
;
  }

  static const char* value(const ::planner::ViewpointsWithFrontiers_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.view_point);
      stream.next(m.frontiers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ViewpointsWithFrontiers_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planner::ViewpointsWithFrontiers_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planner::ViewpointsWithFrontiers_<ContainerAllocator>& v)
  {
    s << indent << "view_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.view_point);
    s << indent << "frontiers[]" << std::endl;
    for (size_t i = 0; i < v.frontiers.size(); ++i)
    {
      s << indent << "  frontiers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ufomap_manager::CellCode_<ContainerAllocator> >::stream(s, indent + "    ", v.frontiers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNER_MESSAGE_VIEWPOINTSWITHFRONTIERS_H
