# Install script for directory: /home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/korivi/model_car/ecl_lib/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/command_line" TYPE FILE FILES
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/switch_arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/values_constraint.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/value_arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/ignore_rest_visitor.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/constraint.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/visitor.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/docbook_output.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/cmd_line_output.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/std_output.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/unlabeled_multi_arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/optional_unlabeled_tracker.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/help_visitor.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/cmd_line_interface.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/multi_switch_arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/multi_arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/arg_exception.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/unlabeled_value_arg.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/xor_handler.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/cmd_line.hpp"
    "/home/korivi/model_car/ecl_lib/src/ecl_command_line/include/ecl/command_line/version_visitor.hpp"
    )
endif()
