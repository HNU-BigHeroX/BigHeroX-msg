# 行走引擎调试信息
# 话题: debug/walk_engine

std_msgs/Header header

# 元数据
int64 timestamp          # 纳秒时间戳
int64 index              # 消息序列号

# 当前步态相位 [0.0, 1.0]
float32 phase

# 请求速度 (字段命名对齐 RemoteControlMotion_ 的 vx/vy/vyaw)
float32 cmd_vx
float32 cmd_vy
float32 cmd_vyaw

# 实际执行速度
float32 actual_vx
float32 actual_vy
float32 actual_vyaw

# 足端位置 (base_footprint 坐标系)
geometry_msgs/Point left_foot_pos
geometry_msgs/Point right_foot_pos

# 质心位置
geometry_msgs/Point center_of_mass

bool is_walking

# 当前步态步幅 (对齐 gait_step)
float32 gait_step

# 当前步态类型
uint8 gait_type

# 步频 (Hz)
float32 step_frequency
