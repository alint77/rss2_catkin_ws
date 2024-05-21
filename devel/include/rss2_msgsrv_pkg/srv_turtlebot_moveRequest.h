// Generated by gencpp from file rss2_msgsrv_pkg/srv_turtlebot_moveRequest.msg
// DO NOT EDIT!


#ifndef RSS2_MSGSRV_PKG_MESSAGE_SRV_TURTLEBOT_MOVEREQUEST_H
#define RSS2_MSGSRV_PKG_MESSAGE_SRV_TURTLEBOT_MOVEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rss2_msgsrv_pkg
{
template <class ContainerAllocator>
struct srv_turtlebot_moveRequest_
{
  typedef srv_turtlebot_moveRequest_<ContainerAllocator> Type;

  srv_turtlebot_moveRequest_()
    : duration(0)  {
    }
  srv_turtlebot_moveRequest_(const ContainerAllocator& _alloc)
    : duration(0)  {
  (void)_alloc;
    }



   typedef int32_t _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srv_turtlebot_moveRequest_

typedef ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<std::allocator<void> > srv_turtlebot_moveRequest;

typedef boost::shared_ptr< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest > srv_turtlebot_moveRequestPtr;
typedef boost::shared_ptr< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest const> srv_turtlebot_moveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator1> & lhs, const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator2> & rhs)
{
  return lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator1> & lhs, const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rss2_msgsrv_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f60182c6a4cf2e688b1837c24d5f12e";
  }

  static const char* value(const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f60182c6a4cf2e6ULL;
  static const uint64_t static_value2 = 0x88b1837c24d5f12eULL;
};

template<class ContainerAllocator>
struct DataType< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rss2_msgsrv_pkg/srv_turtlebot_moveRequest";
  }

  static const char* value(const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 duration #Request - time tb3 moves\n"
;
  }

  static const char* value(const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srv_turtlebot_moveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rss2_msgsrv_pkg::srv_turtlebot_moveRequest_<ContainerAllocator>& v)
  {
    s << indent << "duration: ";
    Printer<int32_t>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RSS2_MSGSRV_PKG_MESSAGE_SRV_TURTLEBOT_MOVEREQUEST_H
