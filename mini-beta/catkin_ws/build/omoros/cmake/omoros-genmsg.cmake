# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "omoros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iomoros:/home/pi/catkin_ws/src/omoros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(omoros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" NAME_WE)
add_custom_target(_omoros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omoros" "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" "omoros/R1MotorStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" NAME_WE)
add_custom_target(_omoros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "omoros" "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omoros
)
_generate_msg_cpp(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omoros
)

### Generating Services

### Generating Module File
_generate_module_cpp(omoros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omoros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(omoros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(omoros_generate_messages omoros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" NAME_WE)
add_dependencies(omoros_generate_messages_cpp _omoros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" NAME_WE)
add_dependencies(omoros_generate_messages_cpp _omoros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omoros_gencpp)
add_dependencies(omoros_gencpp omoros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omoros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omoros
)
_generate_msg_eus(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omoros
)

### Generating Services

### Generating Module File
_generate_module_eus(omoros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omoros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(omoros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(omoros_generate_messages omoros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" NAME_WE)
add_dependencies(omoros_generate_messages_eus _omoros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" NAME_WE)
add_dependencies(omoros_generate_messages_eus _omoros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omoros_geneus)
add_dependencies(omoros_geneus omoros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omoros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omoros
)
_generate_msg_lisp(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omoros
)

### Generating Services

### Generating Module File
_generate_module_lisp(omoros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omoros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(omoros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(omoros_generate_messages omoros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" NAME_WE)
add_dependencies(omoros_generate_messages_lisp _omoros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" NAME_WE)
add_dependencies(omoros_generate_messages_lisp _omoros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omoros_genlisp)
add_dependencies(omoros_genlisp omoros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omoros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omoros
)
_generate_msg_nodejs(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omoros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(omoros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omoros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(omoros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(omoros_generate_messages omoros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" NAME_WE)
add_dependencies(omoros_generate_messages_nodejs _omoros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" NAME_WE)
add_dependencies(omoros_generate_messages_nodejs _omoros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omoros_gennodejs)
add_dependencies(omoros_gennodejs omoros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omoros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omoros
)
_generate_msg_py(omoros
  "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omoros
)

### Generating Services

### Generating Module File
_generate_module_py(omoros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omoros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(omoros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(omoros_generate_messages omoros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatusLR.msg" NAME_WE)
add_dependencies(omoros_generate_messages_py _omoros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/omoros/msg/R1MotorStatus.msg" NAME_WE)
add_dependencies(omoros_generate_messages_py _omoros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(omoros_genpy)
add_dependencies(omoros_genpy omoros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS omoros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omoros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/omoros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(omoros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omoros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/omoros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(omoros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omoros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/omoros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(omoros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omoros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/omoros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(omoros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omoros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omoros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/omoros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(omoros_generate_messages_py std_msgs_generate_messages_py)
endif()
