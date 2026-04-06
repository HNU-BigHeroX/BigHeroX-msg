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
  # 控制接口 (对齐 Zvalley SDK 高层/底层服务)
  "msg/RobotControlState.msg"   # /change_cmd        <- RemoteControlChange_  (高层，无rt/前缀)
  "msg/MotionCommand.msg"       # /motion_cmd        <- RemoteControlMotion_  (高层，无rt/前缀)
  "msg/JointCommand.msg"        # rt/all_joint_cmd   <- AllJointCmd_          (底层DDS)
  "msg/JointState.msg"          # rt/all_joint_state <- AllJointState_        (底层DDS)
  "msg/HeadMode.msg"            # /head_cmd          (高层，无rt/前缀)
  "msg/KickGoal.msg"            # 踢球目标参数
  "msg/Animation.msg"           # 动画/预设动作
  # 感知接口
  "msg/FieldFeature.msg"
  "msg/FieldFeatureArray.msg"
  "msg/RobotRelative.msg"
  "msg/RobotRelativeArray.msg"
  # 决策接口
  "msg/Strategy.msg"
  "msg/TeamData.msg"
  # 调试接口 (debug/)
  "msg/WalkEngineDebug.msg"
  "msg/KickDebug.msg"
  "msg/DynupEngineDebug.msg"
  # 动作接口
  "action/PlayAnimation.action"
  "action/DynamicKick.action"
  DEPENDENCIES
  action_msgs
  geometry_msgs
  std_msgs
)

ament_package()
