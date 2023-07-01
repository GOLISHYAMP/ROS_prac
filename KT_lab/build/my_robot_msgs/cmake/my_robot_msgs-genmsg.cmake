# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_robot_msgs: 8 messages, 1 services")

set(MSG_I_FLAGS "-Imy_robot_msgs:/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg;-Imy_robot_msgs:/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_robot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" ""
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" "actionlib_msgs/GoalID:std_msgs/Header:my_robot_msgs/simple_actionGoal:my_robot_msgs/simple_actionActionFeedback:my_robot_msgs/simple_actionResult:my_robot_msgs/simple_actionActionGoal:my_robot_msgs/simple_actionActionResult:actionlib_msgs/GoalStatus:my_robot_msgs/simple_actionFeedback"
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" "my_robot_msgs/simple_actionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:my_robot_msgs/simple_actionResult:std_msgs/Header"
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:my_robot_msgs/simple_actionFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" ""
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" ""
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" ""
)

get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" NAME_WE)
add_custom_target(_my_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_robot_msgs" "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)

### Generating Services
_generate_srv_cpp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
)

### Generating Module File
_generate_module_cpp(my_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_robot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_robot_msgs_generate_messages my_robot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_cpp _my_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_msgs_gencpp)
add_dependencies(my_robot_msgs_gencpp my_robot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)

### Generating Services
_generate_srv_eus(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
)

### Generating Module File
_generate_module_eus(my_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_robot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_robot_msgs_generate_messages my_robot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_eus _my_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_msgs_geneus)
add_dependencies(my_robot_msgs_geneus my_robot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)

### Generating Services
_generate_srv_lisp(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
)

### Generating Module File
_generate_module_lisp(my_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_robot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_robot_msgs_generate_messages my_robot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_lisp _my_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_msgs_genlisp)
add_dependencies(my_robot_msgs_genlisp my_robot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)

### Generating Services
_generate_srv_nodejs(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
)

### Generating Module File
_generate_module_nodejs(my_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_robot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_robot_msgs_generate_messages my_robot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_nodejs _my_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_msgs_gennodejs)
add_dependencies(my_robot_msgs_gennodejs my_robot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)
_generate_msg_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)

### Generating Services
_generate_srv_py(my_robot_msgs
  "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
)

### Generating Module File
_generate_module_py(my_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_robot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_robot_msgs_generate_messages my_robot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/msg/robot.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionAction.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionActionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionGoal.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionResult.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/devel/share/my_robot_msgs/msg/simple_actionFeedback.msg" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shyam/ROS/ROS_prac/KT_lab/src/my_robot_msgs/srv/signal.srv" NAME_WE)
add_dependencies(my_robot_msgs_generate_messages_py _my_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_robot_msgs_genpy)
add_dependencies(my_robot_msgs_genpy my_robot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_robot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_robot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(my_robot_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_robot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_robot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(my_robot_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_robot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_robot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(my_robot_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_robot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_robot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(my_robot_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_robot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_robot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(my_robot_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_robot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
