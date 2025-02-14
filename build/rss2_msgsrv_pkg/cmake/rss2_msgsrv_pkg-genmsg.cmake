# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rss2_msgsrv_pkg: 1 messages, 2 services")

set(MSG_I_FLAGS "-Irss2_msgsrv_pkg:/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rss2_msgsrv_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" NAME_WE)
add_custom_target(_rss2_msgsrv_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss2_msgsrv_pkg" "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" NAME_WE)
add_custom_target(_rss2_msgsrv_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss2_msgsrv_pkg" "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" ""
)

get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" NAME_WE)
add_custom_target(_rss2_msgsrv_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rss2_msgsrv_pkg" "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Services
_generate_srv_cpp(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss2_msgsrv_pkg
)
_generate_srv_cpp(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Module File
_generate_module_cpp(rss2_msgsrv_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss2_msgsrv_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rss2_msgsrv_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rss2_msgsrv_pkg_generate_messages rss2_msgsrv_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_cpp _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_cpp _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_cpp _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss2_msgsrv_pkg_gencpp)
add_dependencies(rss2_msgsrv_pkg_gencpp rss2_msgsrv_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss2_msgsrv_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Services
_generate_srv_eus(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss2_msgsrv_pkg
)
_generate_srv_eus(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Module File
_generate_module_eus(rss2_msgsrv_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss2_msgsrv_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rss2_msgsrv_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rss2_msgsrv_pkg_generate_messages rss2_msgsrv_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_eus _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_eus _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_eus _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss2_msgsrv_pkg_geneus)
add_dependencies(rss2_msgsrv_pkg_geneus rss2_msgsrv_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss2_msgsrv_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Services
_generate_srv_lisp(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss2_msgsrv_pkg
)
_generate_srv_lisp(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Module File
_generate_module_lisp(rss2_msgsrv_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss2_msgsrv_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rss2_msgsrv_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rss2_msgsrv_pkg_generate_messages rss2_msgsrv_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_lisp _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_lisp _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_lisp _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss2_msgsrv_pkg_genlisp)
add_dependencies(rss2_msgsrv_pkg_genlisp rss2_msgsrv_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss2_msgsrv_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Services
_generate_srv_nodejs(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss2_msgsrv_pkg
)
_generate_srv_nodejs(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Module File
_generate_module_nodejs(rss2_msgsrv_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss2_msgsrv_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rss2_msgsrv_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rss2_msgsrv_pkg_generate_messages rss2_msgsrv_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_nodejs _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_nodejs _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_nodejs _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss2_msgsrv_pkg_gennodejs)
add_dependencies(rss2_msgsrv_pkg_gennodejs rss2_msgsrv_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss2_msgsrv_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Services
_generate_srv_py(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg
)
_generate_srv_py(rss2_msgsrv_pkg
  "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg
)

### Generating Module File
_generate_module_py(rss2_msgsrv_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rss2_msgsrv_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rss2_msgsrv_pkg_generate_messages rss2_msgsrv_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/msg/date_cmd_vel.msg" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_py _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/srv_turtlebot_move.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_py _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ali/rss2_catkin_ws/src/rss2_msgsrv_pkg/srv/turtlebot_move_square.srv" NAME_WE)
add_dependencies(rss2_msgsrv_pkg_generate_messages_py _rss2_msgsrv_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rss2_msgsrv_pkg_genpy)
add_dependencies(rss2_msgsrv_pkg_genpy rss2_msgsrv_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rss2_msgsrv_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss2_msgsrv_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rss2_msgsrv_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss2_msgsrv_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rss2_msgsrv_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss2_msgsrv_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rss2_msgsrv_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss2_msgsrv_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rss2_msgsrv_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rss2_msgsrv_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(rss2_msgsrv_pkg_generate_messages_py nav_msgs_generate_messages_py)
endif()
