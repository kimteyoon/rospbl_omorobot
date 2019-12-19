;; Auto-generated. Do not edit!


(when (boundp 'omoros::R1MotorStatusLR)
  (if (not (find-package "OMOROS"))
    (make-package "OMOROS"))
  (shadow 'R1MotorStatusLR (find-package "OMOROS")))
(unless (find-package "OMOROS::R1MOTORSTATUSLR")
  (make-package "OMOROS::R1MOTORSTATUSLR"))

(in-package "ROS")
;;//! \htmlinclude R1MotorStatusLR.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass omoros::R1MotorStatusLR
  :super ros::object
  :slots (_header _Vspeed _Vomega _left _right ))

(defmethod omoros::R1MotorStatusLR
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Vspeed __Vspeed) 0.0)
    ((:Vomega __Vomega) 0.0)
    ((:left __left) (instance omoros::R1MotorStatus :init))
    ((:right __right) (instance omoros::R1MotorStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Vspeed (float __Vspeed))
   (setq _Vomega (float __Vomega))
   (setq _left __left)
   (setq _right __right)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Vspeed
   (&optional __Vspeed)
   (if __Vspeed (setq _Vspeed __Vspeed)) _Vspeed)
  (:Vomega
   (&optional __Vomega)
   (if __Vomega (setq _Vomega __Vomega)) _Vomega)
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _Vspeed
    4
    ;; float32 _Vomega
    4
    ;; omoros/R1MotorStatus _left
    (send _left :serialization-length)
    ;; omoros/R1MotorStatus _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _Vspeed
       (sys::poke _Vspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vomega
       (sys::poke _Vomega (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; omoros/R1MotorStatus _left
       (send _left :serialize s)
     ;; omoros/R1MotorStatus _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _Vspeed
     (setq _Vspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vomega
     (setq _Vomega (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; omoros/R1MotorStatus _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; omoros/R1MotorStatus _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get omoros::R1MotorStatusLR :md5sum-) "d4f43c45f2af2c6f8fc40d2ec2c98367")
(setf (get omoros::R1MotorStatusLR :datatype-) "omoros/R1MotorStatusLR")
(setf (get omoros::R1MotorStatusLR :definition-)
      "Header header
float32 Vspeed   	# mm per second
float32 Vomega	    # mrad per second
R1MotorStatus left
R1MotorStatus right

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: omoros/R1MotorStatus
bool low_voltage
bool overloaded
int8 power      # PWM duty cycle -100 ... 100
float32 encoder # degree
float32 RPM   	# degree per second
float32 ODO	    # odometry
float32 speed   # mm per second

")



(provide :omoros/R1MotorStatusLR "d4f43c45f2af2c6f8fc40d2ec2c98367")


