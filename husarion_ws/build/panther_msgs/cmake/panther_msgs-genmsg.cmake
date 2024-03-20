# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "panther_msgs: 11 messages, 3 services")

set(MSG_I_FLAGS "-Ipanther_msgs:/home/husarion/husarion_ws/src/panther_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(panther_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" "panther_msgs/ScriptFlag:panther_msgs/MotorState:panther_msgs/MotorControllerState:panther_msgs/RuntimeError:panther_msgs/FaultFlag"
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" "panther_msgs/RuntimeError:panther_msgs/FaultFlag:panther_msgs/ScriptFlag:panther_msgs/MotorState"
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" "panther_msgs/RuntimeError"
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" "panther_msgs/LEDAnimation"
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" ""
)

get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" NAME_WE)
add_custom_target(_panther_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panther_msgs" "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" "panther_msgs/LEDImageAnimation"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_msg_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)

### Generating Services
_generate_srv_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_srv_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)
_generate_srv_cpp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
)

### Generating Module File
_generate_module_cpp(panther_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(panther_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(panther_msgs_generate_messages panther_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_cpp _panther_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panther_msgs_gencpp)
add_dependencies(panther_msgs_gencpp panther_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panther_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_msg_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)

### Generating Services
_generate_srv_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_srv_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)
_generate_srv_eus(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
)

### Generating Module File
_generate_module_eus(panther_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(panther_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(panther_msgs_generate_messages panther_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_eus _panther_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panther_msgs_geneus)
add_dependencies(panther_msgs_geneus panther_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panther_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_msg_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)

### Generating Services
_generate_srv_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_srv_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)
_generate_srv_lisp(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
)

### Generating Module File
_generate_module_lisp(panther_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(panther_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(panther_msgs_generate_messages panther_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_lisp _panther_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panther_msgs_genlisp)
add_dependencies(panther_msgs_genlisp panther_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panther_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_msg_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)

### Generating Services
_generate_srv_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_srv_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)
_generate_srv_nodejs(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
)

### Generating Module File
_generate_module_nodejs(panther_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(panther_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(panther_msgs_generate_messages panther_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_nodejs _panther_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panther_msgs_gennodejs)
add_dependencies(panther_msgs_gennodejs panther_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panther_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg;/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_msg_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)

### Generating Services
_generate_srv_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_srv_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)
_generate_srv_py(panther_msgs
  "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv"
  "${MSG_I_FLAGS}"
  "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
)

### Generating Module File
_generate_module_py(panther_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(panther_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(panther_msgs_generate_messages panther_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv" NAME_WE)
add_dependencies(panther_msgs_generate_messages_py _panther_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panther_msgs_genpy)
add_dependencies(panther_msgs_genpy panther_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panther_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panther_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(panther_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panther_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(panther_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panther_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(panther_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panther_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(panther_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panther_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(panther_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
