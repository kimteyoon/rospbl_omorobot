; Auto-generated. Do not edit!


(cl:in-package omoros-msg)


;//! \htmlinclude R1MotorStatusLR.msg.html

(cl:defclass <R1MotorStatusLR> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Vspeed
    :reader Vspeed
    :initarg :Vspeed
    :type cl:float
    :initform 0.0)
   (Vomega
    :reader Vomega
    :initarg :Vomega
    :type cl:float
    :initform 0.0)
   (left
    :reader left
    :initarg :left
    :type omoros-msg:R1MotorStatus
    :initform (cl:make-instance 'omoros-msg:R1MotorStatus))
   (right
    :reader right
    :initarg :right
    :type omoros-msg:R1MotorStatus
    :initform (cl:make-instance 'omoros-msg:R1MotorStatus)))
)

(cl:defclass R1MotorStatusLR (<R1MotorStatusLR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <R1MotorStatusLR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'R1MotorStatusLR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omoros-msg:<R1MotorStatusLR> is deprecated: use omoros-msg:R1MotorStatusLR instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <R1MotorStatusLR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:header-val is deprecated.  Use omoros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Vspeed-val :lambda-list '(m))
(cl:defmethod Vspeed-val ((m <R1MotorStatusLR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:Vspeed-val is deprecated.  Use omoros-msg:Vspeed instead.")
  (Vspeed m))

(cl:ensure-generic-function 'Vomega-val :lambda-list '(m))
(cl:defmethod Vomega-val ((m <R1MotorStatusLR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:Vomega-val is deprecated.  Use omoros-msg:Vomega instead.")
  (Vomega m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <R1MotorStatusLR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:left-val is deprecated.  Use omoros-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <R1MotorStatusLR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:right-val is deprecated.  Use omoros-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <R1MotorStatusLR>) ostream)
  "Serializes a message object of type '<R1MotorStatusLR>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vomega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <R1MotorStatusLR>) istream)
  "Deserializes a message object of type '<R1MotorStatusLR>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vomega) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<R1MotorStatusLR>)))
  "Returns string type for a message object of type '<R1MotorStatusLR>"
  "omoros/R1MotorStatusLR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'R1MotorStatusLR)))
  "Returns string type for a message object of type 'R1MotorStatusLR"
  "omoros/R1MotorStatusLR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<R1MotorStatusLR>)))
  "Returns md5sum for a message object of type '<R1MotorStatusLR>"
  "d4f43c45f2af2c6f8fc40d2ec2c98367")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'R1MotorStatusLR)))
  "Returns md5sum for a message object of type 'R1MotorStatusLR"
  "d4f43c45f2af2c6f8fc40d2ec2c98367")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<R1MotorStatusLR>)))
  "Returns full string definition for message of type '<R1MotorStatusLR>"
  (cl:format cl:nil "Header header~%float32 Vspeed   	# mm per second~%float32 Vomega	    # mrad per second~%R1MotorStatus left~%R1MotorStatus right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: omoros/R1MotorStatus~%bool low_voltage~%bool overloaded~%int8 power      # PWM duty cycle -100 ... 100~%float32 encoder # degree~%float32 RPM   	# degree per second~%float32 ODO	    # odometry~%float32 speed   # mm per second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'R1MotorStatusLR)))
  "Returns full string definition for message of type 'R1MotorStatusLR"
  (cl:format cl:nil "Header header~%float32 Vspeed   	# mm per second~%float32 Vomega	    # mrad per second~%R1MotorStatus left~%R1MotorStatus right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: omoros/R1MotorStatus~%bool low_voltage~%bool overloaded~%int8 power      # PWM duty cycle -100 ... 100~%float32 encoder # degree~%float32 RPM   	# degree per second~%float32 ODO	    # odometry~%float32 speed   # mm per second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <R1MotorStatusLR>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <R1MotorStatusLR>))
  "Converts a ROS message object to a list"
  (cl:list 'R1MotorStatusLR
    (cl:cons ':header (header msg))
    (cl:cons ':Vspeed (Vspeed msg))
    (cl:cons ':Vomega (Vomega msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
