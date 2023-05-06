# Install script for directory: /home/shyam/ROS_practice/prac_ros_ws/src/my_robot_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shyam/ROS_practice/prac_ros_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/msg" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/src/my_robot_msgs/msg/number.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/srv" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/src/my_robot_msgs/srv/num_srv.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/action" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/src/my_robot_msgs/action/num_action.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/msg" TYPE FILE FILES
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionAction.msg"
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionActionGoal.msg"
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionActionResult.msg"
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionActionFeedback.msg"
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionGoal.msg"
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionResult.msg"
    "/home/shyam/ROS_practice/prac_ros_ws/devel/share/my_robot_msgs/msg/num_actionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/cmake" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/build/my_robot_msgs/catkin_generated/installspace/my_robot_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shyam/ROS_practice/prac_ros_ws/devel/include/my_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shyam/ROS_practice/prac_ros_ws/devel/share/roseus/ros/my_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shyam/ROS_practice/prac_ros_ws/devel/share/common-lisp/ros/my_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shyam/ROS_practice/prac_ros_ws/devel/share/gennodejs/ros/my_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/shyam/ROS_practice/prac_ros_ws/devel/lib/python3/dist-packages/my_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/shyam/ROS_practice/prac_ros_ws/devel/lib/python3/dist-packages/my_robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/build/my_robot_msgs/catkin_generated/installspace/my_robot_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/cmake" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/build/my_robot_msgs/catkin_generated/installspace/my_robot_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs/cmake" TYPE FILE FILES
    "/home/shyam/ROS_practice/prac_ros_ws/build/my_robot_msgs/catkin_generated/installspace/my_robot_msgsConfig.cmake"
    "/home/shyam/ROS_practice/prac_ros_ws/build/my_robot_msgs/catkin_generated/installspace/my_robot_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_robot_msgs" TYPE FILE FILES "/home/shyam/ROS_practice/prac_ros_ws/src/my_robot_msgs/package.xml")
endif()

