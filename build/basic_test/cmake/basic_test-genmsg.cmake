# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "basic_test: 0 messages, 1 services")

set(MSG_I_FLAGS "-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(basic_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/leon/catkin_ws/src/basic_test/srv/basic.srv" NAME_WE)
add_custom_target(_basic_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "basic_test" "/home/leon/catkin_ws/src/basic_test/srv/basic.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(basic_test
  "/home/leon/catkin_ws/src/basic_test/srv/basic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_cpp(basic_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(basic_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/catkin_ws/src/basic_test/srv/basic.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_cpp _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_gencpp)
add_dependencies(basic_test_gencpp basic_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(basic_test
  "/home/leon/catkin_ws/src/basic_test/srv/basic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_lisp(basic_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(basic_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/catkin_ws/src/basic_test/srv/basic.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_lisp _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_genlisp)
add_dependencies(basic_test_genlisp basic_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(basic_test
  "/home/leon/catkin_ws/src/basic_test/srv/basic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_py(basic_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(basic_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/leon/catkin_ws/src/basic_test/srv/basic.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_py _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_genpy)
add_dependencies(basic_test_genpy basic_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(basic_test_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(basic_test_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(basic_test_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(basic_test_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(basic_test_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(basic_test_generate_messages_py std_msgs_generate_messages_py)
endif()
