// Generated by gencpp from file traversability_analysis/TerrainMap.msg
// DO NOT EDIT!


#ifndef TRAVERSABILITY_ANALYSIS_MESSAGE_TERRAINMAP_H
#define TRAVERSABILITY_ANALYSIS_MESSAGE_TERRAINMAP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <traversability_analysis/TerrainGrid.h>

namespace traversability_analysis
{
template <class ContainerAllocator>
struct TerrainMap_
{
  typedef TerrainMap_<ContainerAllocator> Type;

  TerrainMap_()
    : header()
    , min_x(0.0)
    , min_y(0.0)
    , z_value(0.0)
    , grid_size(0.0)
    , grid_width_num(0)
    , grids()  {
    }
  TerrainMap_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , min_x(0.0)
    , min_y(0.0)
    , z_value(0.0)
    , grid_size(0.0)
    , grid_width_num(0)
    , grids(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _min_x_type;
  _min_x_type min_x;

   typedef double _min_y_type;
  _min_y_type min_y;

   typedef double _z_value_type;
  _z_value_type z_value;

   typedef double _grid_size_type;
  _grid_size_type grid_size;

   typedef uint32_t _grid_width_num_type;
  _grid_width_num_type grid_width_num;

   typedef std::vector< ::traversability_analysis::TerrainGrid_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >> _grids_type;
  _grids_type grids;





  typedef boost::shared_ptr< ::traversability_analysis::TerrainMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traversability_analysis::TerrainMap_<ContainerAllocator> const> ConstPtr;

}; // struct TerrainMap_

typedef ::traversability_analysis::TerrainMap_<std::allocator<void> > TerrainMap;

typedef boost::shared_ptr< ::traversability_analysis::TerrainMap > TerrainMapPtr;
typedef boost::shared_ptr< ::traversability_analysis::TerrainMap const> TerrainMapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traversability_analysis::TerrainMap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traversability_analysis::TerrainMap_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traversability_analysis::TerrainMap_<ContainerAllocator1> & lhs, const ::traversability_analysis::TerrainMap_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.min_x == rhs.min_x &&
    lhs.min_y == rhs.min_y &&
    lhs.z_value == rhs.z_value &&
    lhs.grid_size == rhs.grid_size &&
    lhs.grid_width_num == rhs.grid_width_num &&
    lhs.grids == rhs.grids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traversability_analysis::TerrainMap_<ContainerAllocator1> & lhs, const ::traversability_analysis::TerrainMap_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traversability_analysis

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traversability_analysis::TerrainMap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversability_analysis::TerrainMap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversability_analysis::TerrainMap_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ab03f5fc2ebd4e308020515a4dcc93f2";
  }

  static const char* value(const ::traversability_analysis::TerrainMap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xab03f5fc2ebd4e30ULL;
  static const uint64_t static_value2 = 0x8020515a4dcc93f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traversability_analysis/TerrainMap";
  }

  static const char* value(const ::traversability_analysis::TerrainMap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 min_x\n"
"float64 min_y\n"
"float64 z_value\n"
"float64 grid_size\n"
"uint32 grid_width_num\n"
"TerrainGrid[] grids\n"
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
"MSG: traversability_analysis/TerrainGrid\n"
"uint8 status\n"
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

  static const char* value(const ::traversability_analysis::TerrainMap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.min_x);
      stream.next(m.min_y);
      stream.next(m.z_value);
      stream.next(m.grid_size);
      stream.next(m.grid_width_num);
      stream.next(m.grids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TerrainMap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traversability_analysis::TerrainMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traversability_analysis::TerrainMap_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "min_x: ";
    Printer<double>::stream(s, indent + "  ", v.min_x);
    s << indent << "min_y: ";
    Printer<double>::stream(s, indent + "  ", v.min_y);
    s << indent << "z_value: ";
    Printer<double>::stream(s, indent + "  ", v.z_value);
    s << indent << "grid_size: ";
    Printer<double>::stream(s, indent + "  ", v.grid_size);
    s << indent << "grid_width_num: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.grid_width_num);
    s << indent << "grids[]" << std::endl;
    for (size_t i = 0; i < v.grids.size(); ++i)
    {
      s << indent << "  grids[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::traversability_analysis::TerrainGrid_<ContainerAllocator> >::stream(s, indent + "    ", v.grids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAVERSABILITY_ANALYSIS_MESSAGE_TERRAINMAP_H