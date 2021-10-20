execute_process(COMMAND "/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/build/DynamixelSDK/ros/dynamixel_sdk/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/media/s4mothy/HI THERE/programming/school/csci5551/project_botross/botross_ws/build/DynamixelSDK/ros/dynamixel_sdk/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
