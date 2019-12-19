; Auto-generated. Do not edit!


(cl:in-package omoros-msg)


;//! \htmlinclude R1MotorStatus.msg.html

(cl:defclass <R1MotorStatus> (roslisp-msg-protocol:ros-message)
  ((low_voltage
    :reader low_voltage
    :initarg :low_voltage
    :type cl:boolean
    :initform cl:nil)
   (overloaded
    :reader overloaded
    :initarg :overloaded
    :type cl:boolean
    :initform cl:nil)
   (power
    :reader power
    :initarg :power
    :type cl:fixnum
    :initform 0)
   (encoder
    :reader encoder
    :initarg :encoder
    :type cl:float
    :initform 0.0)
   (RPM
    :reader RPM
    :initarg :RPM
    :type cl:float
    :initform 0.0)
   (ODO
    :reader ODO
    :initarg :ODO
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass R1MotorStatus (<R1MotorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <R1MotorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'R1MotorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name omoros-msg:<R1MotorStatus> is deprecated: use omoros-msg:R1MotorStatus instead.")))

(cl:ensure-generic-function 'low_voltage-val :lambda-list '(m))
(cl:defmethod low_voltage-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:low_voltage-val is deprecated.  Use omoros-msg:low_voltage instead.")
  (low_voltage m))

(cl:ensure-generic-function 'overloaded-val :lambda-list '(m))
(cl:defmethod overloaded-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:overloaded-val is deprecated.  Use omoros-msg:overloaded instead.")
  (overloaded m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:power-val is deprecated.  Use omoros-msg:power instead.")
  (power m))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:encoder-val is deprecated.  Use omoros-msg:encoder instead.")
  (encoder m))

(cl:ensure-generic-function 'RPM-val :lambda-list '(m))
(cl:defmethod RPM-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:RPM-val is deprecated.  Use omoros-msg:RPM instead.")
  (RPM m))

(cl:ensure-generic-function 'ODO-val :lambda-list '(m))
(cl:defmethod ODO-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:ODO-val is deprecated.  Use omoros-msg:ODO instead.")
  (ODO m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <R1MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader omoros-msg:speed-val is deprecated.  Use omoros-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <R1MotorStatus>) ostream)
  "Serializes a message object of type '<R1MotorStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_voltage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overloaded) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'power)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'encoder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RPM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ODO))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <R1MotorStatus>) istream)
  "Deserializes a message object of type '<R1MotorStatus>"
    (cl:setf (cl:slot-value msg 'low_voltage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overloaded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'power) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'encoder) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RPM) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ODO) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<R1MotorStatus>)))
  "Returns string type for a message object of type '<R1MotorStatus>"
  "omoros/R1MotorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'R1MotorStatus)))
  "Returns string type for a message object of type 'R1MotorStatus"
  "omoros/R1MotorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<R1MotorStatus>)))
  "Returns md5sum for a message object of type '<R1MotorStatus>"
  "ed4aa0a1804ce8d024e0d4bdeea3bc21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'R1MotorStatus)))
  "Returns md5sum for a message object of type 'R1MotorStatus"
  "ed4aa0a1804ce8d024e0d4bdeea3bc21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<R1MotorStatus>)))
  "Returns full string definition for message of type '<R1MotorStatus>"
  (cl:format cl:nil "bool low_voltage~%bool overloaded~%int8 power      # PWM duty cycle -100 ... 100~%float32 encoder # degree~%float32 RPM   	# degree per second~%float32 ODO	    # odometry~%float32 speed   # mm per second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'R1MotorStatus)))
  "Returns full string definition for message of type 'R1MotorStatus"
  (cl:format cl:nil "bool low_voltage~%bool overloaded~%int8 power      # PWM duty cycle -100 ... 100~%float32 encoder # degree~%float32 RPM   	# degree per second~%float32 ODO	    # odometry~%float32 speed   # mm per second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <R1MotorStatus>))
  (cl:+ 0
     1
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <R1MotorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'R1MotorStatus
    (cl:cons ':low_voltage (low_voltage msg))
    (cl:cons ':overloaded (overloaded msg))
    (cl:cons ':power (power msg))
    (cl:cons ':encoder (encoder msg))
    (cl:cons ':RPM (RPM msg))
    (cl:cons ':ODO (ODO msg))
    (cl:cons ':speed (speed msg))
))
