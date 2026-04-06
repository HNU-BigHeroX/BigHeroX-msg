# 踢球调试信息
# 话题: debug/kick

std_msgs/Header header

# 元数据
int64 timestamp        # 纳秒时间戳
int64 index            # 消息序列号

uint8 FOOT_LEFT = 1
uint8 FOOT_RIGHT = 2
uint8 kick_foot

string phase

geometry_msgs/Point ball_position

float32 kick_direction
float32 kick_strength
float32 distance_to_ball

bool kick_successful
