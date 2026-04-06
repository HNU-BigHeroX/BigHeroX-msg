# 对齐 Zvalley SDK AllJointState_ 结构
# 话题: rt/all_joint_state  (底层 DDS 接口，rt/ 前缀)
#
# SDK 原始字段 (AllJointState_):
#   timestamp_    (int64)  -> timestamp
#   index_        (int64)  -> index
#   joint_states_ (vector) -> 展开为并行数组
#
# SDK JointState_ 单关节字段:
#   joint_pos_    (double)  -> joint_pos
#   joint_vel_    (double)  -> joint_vel
#   joint_torque_ (double)  -> joint_torque
#   temp_motor_   (int32_t) -> temp_motor
#   temp_mos_     (int32_t) -> temp_mos
#   error_        (int32_t) -> error
#
# 注意: SDK 底层结构体无 header 和 joint_names，
#       header 仅供 ROS2 内部使用，SDK 按索引 0-22 访问关节

std_msgs/Header header   # ROS2 内部使用，不映射到 SDK 结构体

# 元数据 (对齐 AllJointState_::timestamp_, index_)
int64 timestamp          # 纳秒时间戳，对齐 timestamp_
int64 index              # 消息序列号，对齐 index_

# 关节名称 (ROS2 内部使用，SDK 无此字段)
string[] joint_names

# 状态数据 (对齐 JointState_ 字段，按关节索引展开)
float64[] joint_pos      # 关节位置 (rad)，对齐 joint_pos_
float64[] joint_vel      # 关节速度 (rad/s)，对齐 joint_vel_
float64[] joint_torque   # 关节力矩 (N·m)，对齐 joint_torque_

# 诊断信息 (对齐 JointState_::temp_motor_, temp_mos_, error_)
int32[] temp_motor       # 电机温度 (°C)，对齐 temp_motor_
int32[] temp_mos         # MOS温度 (°C)，对齐 temp_mos_
int32[] error            # 错误码，对齐 error_
