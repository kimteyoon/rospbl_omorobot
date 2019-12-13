
(cl:in-package :asdf)

(defsystem "omoros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "R1MotorStatus" :depends-on ("_package_R1MotorStatus"))
    (:file "_package_R1MotorStatus" :depends-on ("_package"))
    (:file "R1MotorStatusLR" :depends-on ("_package_R1MotorStatusLR"))
    (:file "_package_R1MotorStatusLR" :depends-on ("_package"))
  ))