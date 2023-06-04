// Generated by gencpp from file servicetest/hjhResponse.msg
// DO NOT EDIT!


#ifndef SERVICETEST_MESSAGE_HJHRESPONSE_H
#define SERVICETEST_MESSAGE_HJHRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace servicetest
{
template <class ContainerAllocator>
struct hjhResponse_
{
  typedef hjhResponse_<ContainerAllocator> Type;

  hjhResponse_()
    : memory()  {
    }
  hjhResponse_(const ContainerAllocator& _alloc)
    : memory(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _memory_type;
  _memory_type memory;





  typedef boost::shared_ptr< ::servicetest::hjhResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::servicetest::hjhResponse_<ContainerAllocator> const> ConstPtr;

}; // struct hjhResponse_

typedef ::servicetest::hjhResponse_<std::allocator<void> > hjhResponse;

typedef boost::shared_ptr< ::servicetest::hjhResponse > hjhResponsePtr;
typedef boost::shared_ptr< ::servicetest::hjhResponse const> hjhResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::servicetest::hjhResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::servicetest::hjhResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace servicetest

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::servicetest::hjhResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::servicetest::hjhResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servicetest::hjhResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servicetest::hjhResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servicetest::hjhResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servicetest::hjhResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::servicetest::hjhResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "496a53350ad789a04356a5ee8e735420";
  }

  static const char* value(const ::servicetest::hjhResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x496a53350ad789a0ULL;
  static const uint64_t static_value2 = 0x4356a5ee8e735420ULL;
};

template<class ContainerAllocator>
struct DataType< ::servicetest::hjhResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "servicetest/hjhResponse";
  }

  static const char* value(const ::servicetest::hjhResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::servicetest::hjhResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string memory\n\
";
  }

  static const char* value(const ::servicetest::hjhResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::servicetest::hjhResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.memory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct hjhResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::servicetest::hjhResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::servicetest::hjhResponse_<ContainerAllocator>& v)
  {
    s << indent << "memory: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.memory);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVICETEST_MESSAGE_HJHRESPONSE_H
