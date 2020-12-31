# Install script for directory: /home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node/msg" TYPE FILE FILES
    "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node/msg/MotorStatus.msg"
    "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node/msg/MotorStatusLR.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node/srv" TYPE FILE FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node/srv/SPI.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node/cmake" TYPE FILE FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/build/gopigo3_node/catkin_generated/installspace/gopigo3_node-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/devel/include/gopigo3_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/devel/share/roseus/ros/gopigo3_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/devel/share/common-lisp/ros/gopigo3_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/devel/share/gennodejs/ros/gopigo3_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/devel/lib/python2.7/dist-packages/gopigo3_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/devel/lib/python2.7/dist-packages/gopigo3_node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/build/gopigo3_node/catkin_generated/installspace/gopigo3_node.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node/cmake" TYPE FILE FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/build/gopigo3_node/catkin_generated/installspace/gopigo3_node-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node/cmake" TYPE FILE FILES
    "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/build/gopigo3_node/catkin_generated/installspace/gopigo3_nodeConfig.cmake"
    "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/build/gopigo3_node/catkin_generated/installspace/gopigo3_nodeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node" TYPE FILE FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gopigo3_node" TYPE PROGRAM FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node/src/gopigo3_driver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gopigo3_node" TYPE DIRECTORY FILES "/home/mpuig/gopigo_rbpi/ros/rbpi_rubot_ws/src/gopigo3_node/launch")
endif()

