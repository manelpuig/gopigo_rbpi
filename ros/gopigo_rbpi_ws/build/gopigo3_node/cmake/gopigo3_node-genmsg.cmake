# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gopigo3_node: 2 messages, 1 services")

set(MSG_I_FLAGS "-Igopigo3_node:/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gopigo3_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" NAME_WE)
add_custom_target(_gopigo3_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gopigo3_node" "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" "gopigo3_node/MotorStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" NAME_WE)
add_custom_target(_gopigo3_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gopigo3_node" "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" ""
)

get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" NAME_WE)
add_custom_target(_gopigo3_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gopigo3_node" "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gopigo3_node
)
_generate_msg_cpp(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gopigo3_node
)

### Generating Services
_generate_srv_cpp(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gopigo3_node
)

### Generating Module File
_generate_module_cpp(gopigo3_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gopigo3_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gopigo3_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gopigo3_node_generate_messages gopigo3_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_cpp _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_cpp _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_cpp _gopigo3_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gopigo3_node_gencpp)
add_dependencies(gopigo3_node_gencpp gopigo3_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gopigo3_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gopigo3_node
)
_generate_msg_eus(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gopigo3_node
)

### Generating Services
_generate_srv_eus(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gopigo3_node
)

### Generating Module File
_generate_module_eus(gopigo3_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gopigo3_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gopigo3_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gopigo3_node_generate_messages gopigo3_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_eus _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_eus _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_eus _gopigo3_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gopigo3_node_geneus)
add_dependencies(gopigo3_node_geneus gopigo3_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gopigo3_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gopigo3_node
)
_generate_msg_lisp(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gopigo3_node
)

### Generating Services
_generate_srv_lisp(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gopigo3_node
)

### Generating Module File
_generate_module_lisp(gopigo3_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gopigo3_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gopigo3_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gopigo3_node_generate_messages gopigo3_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_lisp _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_lisp _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_lisp _gopigo3_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gopigo3_node_genlisp)
add_dependencies(gopigo3_node_genlisp gopigo3_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gopigo3_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gopigo3_node
)
_generate_msg_nodejs(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gopigo3_node
)

### Generating Services
_generate_srv_nodejs(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gopigo3_node
)

### Generating Module File
_generate_module_nodejs(gopigo3_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gopigo3_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gopigo3_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gopigo3_node_generate_messages gopigo3_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_nodejs _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_nodejs _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_nodejs _gopigo3_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gopigo3_node_gennodejs)
add_dependencies(gopigo3_node_gennodejs gopigo3_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gopigo3_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg"
  "${MSG_I_FLAGS}"
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node
)
_generate_msg_py(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node
)

### Generating Services
_generate_srv_py(gopigo3_node
  "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node
)

### Generating Module File
_generate_module_py(gopigo3_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gopigo3_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gopigo3_node_generate_messages gopigo3_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatusLR.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_py _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/msg/MotorStatus.msg" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_py _gopigo3_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mpuig/gopigo_rbpi/ros/gopigo_rbpi_ws/src/gopigo3_node/srv/SPI.srv" NAME_WE)
add_dependencies(gopigo3_node_generate_messages_py _gopigo3_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gopigo3_node_genpy)
add_dependencies(gopigo3_node_genpy gopigo3_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gopigo3_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gopigo3_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gopigo3_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gopigo3_node_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gopigo3_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gopigo3_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gopigo3_node_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gopigo3_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gopigo3_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gopigo3_node_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gopigo3_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gopigo3_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gopigo3_node_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gopigo3_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gopigo3_node_generate_messages_py std_msgs_generate_messages_py)
endif()
