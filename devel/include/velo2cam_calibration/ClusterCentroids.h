// Generated by gencpp from file velo2cam_calibration/ClusterCentroids.msg
// DO NOT EDIT!


#ifndef VELO2CAM_CALIBRATION_MESSAGE_CLUSTERCENTROIDS_H
#define VELO2CAM_CALIBRATION_MESSAGE_CLUSTERCENTROIDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/PointCloud2.h>

namespace velo2cam_calibration
{
template <class ContainerAllocator>
struct ClusterCentroids_
{
  typedef ClusterCentroids_<ContainerAllocator> Type;

  ClusterCentroids_()
    : header()
    , cluster_iterations(0)
    , total_iterations(0)
    , cloud()  {
    }
  ClusterCentroids_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , cluster_iterations(0)
    , total_iterations(0)
    , cloud(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _cluster_iterations_type;
  _cluster_iterations_type cluster_iterations;

   typedef uint32_t _total_iterations_type;
  _total_iterations_type total_iterations;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _cloud_type;
  _cloud_type cloud;





  typedef boost::shared_ptr< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> const> ConstPtr;

}; // struct ClusterCentroids_

typedef ::velo2cam_calibration::ClusterCentroids_<std::allocator<void> > ClusterCentroids;

typedef boost::shared_ptr< ::velo2cam_calibration::ClusterCentroids > ClusterCentroidsPtr;
typedef boost::shared_ptr< ::velo2cam_calibration::ClusterCentroids const> ClusterCentroidsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator1> & lhs, const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.cluster_iterations == rhs.cluster_iterations &&
    lhs.total_iterations == rhs.total_iterations &&
    lhs.cloud == rhs.cloud;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator1> & lhs, const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace velo2cam_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a2787f0622955b34b1f08821ba3ada1";
  }

  static const char* value(const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a2787f0622955b3ULL;
  static const uint64_t static_value2 = 0x4b1f08821ba3ada1ULL;
};

template<class ContainerAllocator>
struct DataType< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
{
  static const char* value()
  {
    return "velo2cam_calibration/ClusterCentroids";
  }

  static const char* value(const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint32 cluster_iterations\n"
"uint32 total_iterations\n"
"sensor_msgs/PointCloud2 cloud\n"
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

  static const char* value(const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.cluster_iterations);
      stream.next(m.total_iterations);
      stream.next(m.cloud);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClusterCentroids_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::velo2cam_calibration::ClusterCentroids_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "cluster_iterations: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.cluster_iterations);
    s << indent << "total_iterations: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.total_iterations);
    s << indent << "cloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.cloud);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VELO2CAM_CALIBRATION_MESSAGE_CLUSTERCENTROIDS_H
