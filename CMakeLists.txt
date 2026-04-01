cmake_minimum_required(VERSION 3.5)
project(BigHeroX_msg)

if(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE RelWithDebInfo)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(action_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(
  ${PROJECT_NAME}
  "msg/RobotControlState.msg"
  "msg/Strategy.msg"
  "msg/RobotRelative.msg"
  "msg/RobotRelativeArray.msg"
  "msg/TeamData.msg"
  "msg/HeadMode.msg"
  "msg/JointCommand.msg"
  "msg/KickGoal.msg"
  "msg/FieldFeature.msg"
  "msg/FieldFeatureArray.msg"
  "msg/WalkEngineDebug.msg"
  "msg/KickDebug.msg"
  "msg/DynupEngineDebug.msg"
  "msg/Animation.msg"
  "action/PlayAnimation.action"
  "action/DynamicKick.action"
  DEPENDENCIES
  action_msgs
  geometry_msgs
  std_msgs
)

ament_package()
