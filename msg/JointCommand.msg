# 对齐 Zvalley SDK AllJointCmd_ 结构
# 话题: rt/all_joint_cmd  (底层 DDS 接口，rt/ 前缀)
#
# SDK 原始字段顺序 (AllJointCmd_):
#   timestamp_ (int64)  -> timestamp
#   index_     (int64)  -> index
#   cmd_type_  (uint8)  -> cmd_type
#   joint_cmds_(vector) -> 展开为并行数组
#
# 注意: SDK 底层结构体无 header，此处 header 仅供 ROS2 内部时序使用，
#       不参与 DDS 序列化映射

std_msgs/Header header   # ROS2 内部使用，不映射到 SDK 结构体

# 元数据 (直接对齐 AllJointCmd_::timestamp_, index_, cmd_type_)
int64 timestamp          # 纳秒时间戳，对齐 timestamp_
int64 index              # 消息序列号，对齐 index_
uint8 cmd_type           # 控制模式，对齐 cmd_type_

# 来源标识 (ROS2 内部语义，不映射到 SDK)
bool from_hcm

# 关节名称 (ROS2 内部使用，SDK 按索引 0-22 访问，无名称字段)
string[] joint_names

# 关节控制参数 (对齐 JointCmd_ 字段，按关节索引展开)
float64[] joint_pos      # 关节目标位置 (rad)，对齐 joint_pos_
float64[] joint_vel      # 关节目标速度 (rad/s)，对齐 joint_vel_
float64[] joint_torque   # 关节目标力矩 (N·m)，对齐 joint_torque_
float64[] kp             # 位置控制比例系数，对齐 kp_
float64[] kd             # 速度控制比例系数，对齐 kd_
