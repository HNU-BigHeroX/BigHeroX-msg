# 踢球目标接口
# 通过 RemoteControlChange_ (key="model", val="kick") 触发踢球模型
# 本消息用于传递踢球参数

std_msgs/Header header

# 元数据
int64 timestamp        # 纳秒时间戳
int64 index            # 消息序列号

# 踢球参数
uint8 FOOT_LEFT = 1
uint8 FOOT_RIGHT = 2
uint8 kick_foot        # 踢球脚

float32 kick_strength  # 踢球力度 [0.0, 1.0]
float32 kick_direction # 踢球方向，相对机器人朝向 (rad)

# 球的位置 (base_footprint 坐标系)
geometry_msgs/Point ball_position
