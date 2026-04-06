# 对齐 Zvalley SDK RemoteControlMotion_ 结构
# 话题: /motion_cmd  (高层接口，无 rt/ 前缀)
#
# SDK 原始字段 (RemoteControlMotion_):
#   vx_           (float) -> vx
#   vy_           (float) -> vy
#   vyaw_         (float) -> vyaw
#   gait_step_    (float) -> gait_step
#   is_continous_ (bool)  -> is_continous  注意: SDK 原文拼写即为 is_continous (少一个u)
#
# 注意: SDK 高层结构体无 timestamp/index/header，此处元数据仅供 ROS2 内部使用

std_msgs/Header header   # ROS2 内部使用

# 元数据 (ROS2 内部使用，不映射到 SDK RemoteControlMotion_)
int64 timestamp
int64 index

# 运动控制参数 (直接对齐 RemoteControlMotion_ 所有字段)
float32 vx             # 前后方向线速度 (m/s)，正值前进，对齐 vx_
float32 vy             # 左右方向线速度 (m/s)，正值左移，对齐 vy_
float32 vyaw           # 偏航角速度 (rad/s)，正值左转，对齐 vyaw_
float32 gait_step      # 步态步幅参数，对齐 gait_step_
bool is_continous      # 是否连续运动，对齐 is_continous_ (SDK 原文拼写)
                       # false(默认): 最长执行 1s; true: 持续执行

# 扩展字段 (ROS2 内部使用，不映射到 SDK)
uint8 GAIT_STILL = 0
uint8 GAIT_STAND = 1
uint8 GAIT_WALK = 2
uint8 GAIT_RUN = 4
uint8 GAIT_CUSTOM = 255
uint8 gait_type        # 步态类型，ROS2 内部语义
