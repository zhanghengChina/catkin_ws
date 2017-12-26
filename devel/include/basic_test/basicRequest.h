// Generated by gencpp from file basic_test/basicRequest.msg
// DO NOT EDIT!


#ifndef BASIC_TEST_MESSAGE_BASICREQUEST_H
#define BASIC_TEST_MESSAGE_BASICREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace basic_test
{
template <class ContainerAllocator>
struct basicRequest_
{
  typedef basicRequest_<ContainerAllocator> Type;

  basicRequest_()
    : A(0)
    , B(0)
    , C(0)  {
    }
  basicRequest_(const ContainerAllocator& _alloc)
    : A(0)
    , B(0)
    , C(0)  {
  (void)_alloc;
    }



   typedef int32_t _A_type;
  _A_type A;

   typedef int32_t _B_type;
  _B_type B;

   typedef int32_t _C_type;
  _C_type C;




  typedef boost::shared_ptr< ::basic_test::basicRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::basic_test::basicRequest_<ContainerAllocator> const> ConstPtr;

}; // struct basicRequest_

typedef ::basic_test::basicRequest_<std::allocator<void> > basicRequest;

typedef boost::shared_ptr< ::basic_test::basicRequest > basicRequestPtr;
typedef boost::shared_ptr< ::basic_test::basicRequest const> basicRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::basic_test::basicRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::basic_test::basicRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace basic_test

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::basic_test::basicRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::basic_test::basicRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::basic_test::basicRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::basic_test::basicRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::basic_test::basicRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::basic_test::basicRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::basic_test::basicRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7a68ce4e0b75a9719b4950a7069c9d4";
  }

  static const char* value(const ::basic_test::basicRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7a68ce4e0b75a97ULL;
  static const uint64_t static_value2 = 0x19b4950a7069c9d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::basic_test::basicRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "basic_test/basicRequest";
  }

  static const char* value(const ::basic_test::basicRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::basic_test::basicRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 A\n\
int32 B\n\
int32 C\n\
";
  }

  static const char* value(const ::basic_test::basicRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::basic_test::basicRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.A);
      stream.next(m.B);
      stream.next(m.C);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct basicRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::basic_test::basicRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::basic_test::basicRequest_<ContainerAllocator>& v)
  {
    s << indent << "A: ";
    Printer<int32_t>::stream(s, indent + "  ", v.A);
    s << indent << "B: ";
    Printer<int32_t>::stream(s, indent + "  ", v.B);
    s << indent << "C: ";
    Printer<int32_t>::stream(s, indent + "  ", v.C);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASIC_TEST_MESSAGE_BASICREQUEST_H
