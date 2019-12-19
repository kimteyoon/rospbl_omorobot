;; Auto-generated. Do not edit!


(when (boundp 'omoros::R1MotorStatus)
  (if (not (find-package "OMOROS"))
    (make-package "OMOROS"))
  (shadow 'R1MotorStatus (find-package "OMOROS")))
(unless (find-package "OMOROS::R1MOTORSTATUS")
  (make-package "OMOROS::R1MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude R1MotorStatus.msg.html


(defclass omoros::R1MotorStatus
  :super ros::object
  :slots (_low_voltage _overloaded _power _encoder _RPM _ODO _speed ))

(defmethod omoros::R1MotorStatus
  (:init
   (&key
    ((:low_voltage __low_voltage) nil)
    ((:overloaded __overloaded) nil)
    ((:power __power) 0)
    ((:encoder __encoder) 0.0)
    ((:RPM __RPM) 0.0)
    ((:ODO __ODO) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _low_voltage __low_voltage)
   (setq _overloaded __overloaded)
   (setq _power (round __power))
   (setq _encoder (float __encoder))
   (setq _RPM (float __RPM))
   (setq _ODO (float __ODO))
   (setq _speed (float __speed))
   self)
  (:low_voltage
   (&optional __low_voltage)
   (if __low_voltage (setq _low_voltage __low_voltage)) _low_voltage)
  (:overloaded
   (&optional __overloaded)
   (if __overloaded (setq _overloaded __overloaded)) _overloaded)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:encoder
   (&optional __encoder)
   (if __encoder (setq _encoder __encoder)) _encoder)
  (:RPM
   (&optional __RPM)
   (if __RPM (setq _RPM __RPM)) _RPM)
  (:ODO
   (&optional __ODO)
   (if __ODO (setq _ODO __ODO)) _ODO)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; bool _low_voltage
    1
    ;; bool _overloaded
    1
    ;; int8 _power
    1
    ;; float32 _encoder
    4
    ;; float32 _RPM
    4
    ;; float32 _ODO
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _low_voltage
       (if _low_voltage (write-byte -1 s) (write-byte 0 s))
     ;; bool _overloaded
       (if _overloaded (write-byte -1 s) (write-byte 0 s))
     ;; int8 _power
       (write-byte _power s)
     ;; float32 _encoder
       (sys::poke _encoder (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RPM
       (sys::poke _RPM (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ODO
       (sys::poke _ODO (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _low_voltage
     (setq _low_voltage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overloaded
     (setq _overloaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _power
     (setq _power (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _power 127) (setq _power (- _power 256)))
   ;; float32 _encoder
     (setq _encoder (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RPM
     (setq _RPM (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ODO
     (setq _ODO (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get omoros::R1MotorStatus :md5sum-) "ed4aa0a1804ce8d024e0d4bdeea3bc21")
(setf (get omoros::R1MotorStatus :datatype-) "omoros/R1MotorStatus")
(setf (get omoros::R1MotorStatus :definition-)
      "bool low_voltage
bool overloaded
int8 power      # PWM duty cycle -100 ... 100
float32 encoder # degree
float32 RPM   	# degree per second
float32 ODO	    # odometry
float32 speed   # mm per second

")



(provide :omoros/R1MotorStatus "ed4aa0a1804ce8d024e0d4bdeea3bc21")


