// Generated by gencpp from file traversability_analysis/TerrainGrid.msg
// DO NOT EDIT!


#ifndef TRAVERSABILITY_ANALYSIS_MESSAGE_TERRAINGRID_H
#define TRAVERSABILITY_ANALYSIS_MESSAGE_TERRAINGRID_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point32.h>
#include <sensor_msgs/PointCloud2.h>

namespace traversability_analysis
{
template <class ContainerAllocator>
struct TerrainGrid_
{
  typedef TerrainGrid_<ContainerAllocator> Type;

  TerrainGrid_()
    : status(0)
    , min_z(0.0)
    , bottom_point()
    , points()  {
    }
  TerrainGrid_(const ContainerAllocator& _alloc)
    : status(0)
    , min_z(0.0)
    , bottom_point(_alloc)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;

   typedef float _min_z_type;
  _min_z_type min_z;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _bottom_point_type;
  _bottom_point_type bottom_point;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::traversability_analysis::TerrainGrid_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traversability_analysis::TerrainGrid_<ContainerAllocator> const> ConstPtr;

}; // struct TerrainGrid_

typedef ::traversability_analysis::TerrainGrid_<std::allocator<void> > TerrainGrid;

typedef boost::shared_ptr< ::traversability_analysis::TerrainGrid > TerrainGridPtr;
typedef boost::shared_ptr< ::traversability_analysis::TerrainGrid const> TerrainGridConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traversability_analysis::TerrainGrid_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traversability_analysis::TerrainGrid_<ContainerAllocator1> & lhs, const ::traversability_analysis::TerrainGrid_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.min_z == rhs.min_z &&
    lhs.bottom_point == rhs.bottom_point &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traversability_analysis::TerrainGrid_<ContainerAllocator1> & lhs, const ::traversability_analysis::TerrainGrid_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traversability_analysis

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traversability_analysis::TerrainGrid_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversability_analysis::TerrainGrid_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversability_analysis::TerrainGrid_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e44473ba5f931adc745fc62d9a24efab";
  }

  static const char* value(const ::traversability_analysis::TerrainGrid_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe44473ba5f931adcULL;
  static const uint64_t static_value2 = 0x745fc62d9a24efabULL;
};

template<class ContainerAllocator>
struct DataType< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traversability_analysis/TerrainGrid";
  }

  static const char* value(const ::traversability_analysis::TerrainGrid_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 status\n"
"\n"
"#坐标系都是输入的点云的坐标系，也就是相对于“map”系的坐标\n"
"float32 min_z\n"
"geometry_msgs/Point32 bottom_point\n"
"sensor_msgs/PointCloud2 points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::traversability_analysis::TerrainGrid_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.min_z);
      stream.next(m.bottom_point);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TerrainGrid_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traversability_analysis::TerrainGrid_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "min_z: ";
    Printer<float>::stream(s, indent + "  ", v.min_z);
    s << indent << "bottom_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.bottom_point);
    s << indent << "points: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.points);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAVERSABILITY_ANALYSIS_MESSAGE_TERRAINGRID_H