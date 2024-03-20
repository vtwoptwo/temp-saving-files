# Install script for directory: /home/husarion/husarion_ws/src/panther_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/husarion/husarion_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panther_msgs/msg" TYPE FILE FILES
    "/home/husarion/husarion_ws/src/panther_msgs/msg/DriverState.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/FaultFlag.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/IOState.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimation.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDAnimationQueue.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/LEDImageAnimation.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorControllerState.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/MotorState.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/RuntimeError.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/ScriptFlag.msg"
    "/home/husarion/husarion_ws/src/panther_msgs/msg/SystemStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panther_msgs/srv" TYPE FILE FILES
    "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDAnimation.srv"
    "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDBrightness.srv"
    "/home/husarion/husarion_ws/src/panther_msgs/srv/SetLEDImageAnimation.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panther_msgs/cmake" TYPE FILE FILES "/home/husarion/husarion_ws/build/panther_msgs/catkin_generated/installspace/panther_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/husarion/husarion_ws/devel/include/panther_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/husarion/husarion_ws/devel/share/roseus/ros/panther_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/husarion/husarion_ws/devel/share/common-lisp/ros/panther_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/husarion/husarion_ws/devel/share/gennodejs/ros/panther_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/husarion/husarion_ws/devel/lib/python3/dist-packages/panther_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/husarion/husarion_ws/devel/lib/python3/dist-packages/panther_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/husarion/husarion_ws/build/panther_msgs/catkin_generated/installspace/panther_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panther_msgs/cmake" TYPE FILE FILES "/home/husarion/husarion_ws/build/panther_msgs/catkin_generated/installspace/panther_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panther_msgs/cmake" TYPE FILE FILES
    "/home/husarion/husarion_ws/build/panther_msgs/catkin_generated/installspace/panther_msgsConfig.cmake"
    "/home/husarion/husarion_ws/build/panther_msgs/catkin_generated/installspace/panther_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panther_msgs" TYPE FILE FILES "/home/husarion/husarion_ws/src/panther_msgs/package.xml")
endif()

