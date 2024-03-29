// Generated by gencpp from file omoros/R1MotorStatus.msg
// DO NOT EDIT!


#ifndef OMOROS_MESSAGE_R1MOTORSTATUS_H
#define OMOROS_MESSAGE_R1MOTORSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace omoros
{
template <class ContainerAllocator>
struct R1MotorStatus_
{
  typedef R1MotorStatus_<ContainerAllocator> Type;

  R1MotorStatus_()
    : low_voltage(false)
    , overloaded(false)
    , power(0)
    , encoder(0.0)
    , RPM(0.0)
    , ODO(0.0)
    , speed(0.0)  {
    }
  R1MotorStatus_(const ContainerAllocator& _alloc)
    : low_voltage(false)
    , overloaded(false)
    , power(0)
    , encoder(0.0)
    , RPM(0.0)
    , ODO(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _low_voltage_type;
  _low_voltage_type low_voltage;

   typedef uint8_t _overloaded_type;
  _overloaded_type overloaded;

   typedef int8_t _power_type;
  _power_type power;

   typedef float _encoder_type;
  _encoder_type encoder;

   typedef float _RPM_type;
  _RPM_type RPM;

   typedef float _ODO_type;
  _ODO_type ODO;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::omoros::R1MotorStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::omoros::R1MotorStatus_<ContainerAllocator> const> ConstPtr;

}; // struct R1MotorStatus_

typedef ::omoros::R1MotorStatus_<std::allocator<void> > R1MotorStatus;

typedef boost::shared_ptr< ::omoros::R1MotorStatus > R1MotorStatusPtr;
typedef boost::shared_ptr< ::omoros::R1MotorStatus const> R1MotorStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::omoros::R1MotorStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::omoros::R1MotorStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace omoros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'omoros': ['/home/pi/catkin_ws/src/omoros/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::omoros::R1MotorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::omoros::R1MotorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::omoros::R1MotorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::omoros::R1MotorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::omoros::R1MotorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::omoros::R1MotorStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::omoros::R1MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ed4aa0a1804ce8d024e0d4bdeea3bc21";
  }

  static const char* value(const ::omoros::R1MotorStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xed4aa0a1804ce8d0ULL;
  static const uint64_t static_value2 = 0x24e0d4bdeea3bc21ULL;
};

template<class ContainerAllocator>
struct DataType< ::omoros::R1MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "omoros/R1MotorStatus";
  }

  static const char* value(const ::omoros::R1MotorStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::omoros::R1MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool low_voltage\n"
"bool overloaded\n"
"int8 power      # PWM duty cycle -100 ... 100\n"
"float32 encoder # degree\n"
"float32 RPM   	# degree per second\n"
"float32 ODO	    # odometry\n"
"float32 speed   # mm per second\n"
;
  }

  static const char* value(const ::omoros::R1MotorStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::omoros::R1MotorStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.low_voltage);
      stream.next(m.overloaded);
      stream.next(m.power);
      stream.next(m.encoder);
      stream.next(m.RPM);
      stream.next(m.ODO);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct R1MotorStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::omoros::R1MotorStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::omoros::R1MotorStatus_<ContainerAllocator>& v)
  {
    s << indent << "low_voltage: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.low_voltage);
    s << indent << "overloaded: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.overloaded);
    s << indent << "power: ";
    Printer<int8_t>::stream(s, indent + "  ", v.power);
    s << indent << "encoder: ";
    Printer<float>::stream(s, indent + "  ", v.encoder);
    s << indent << "RPM: ";
    Printer<float>::stream(s, indent + "  ", v.RPM);
    s << indent << "ODO: ";
    Printer<float>::stream(s, indent + "  ", v.ODO);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OMOROS_MESSAGE_R1MOTORSTATUS_H
