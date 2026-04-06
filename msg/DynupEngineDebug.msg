# 起身引擎调试信息
# 话题: debug/dynup_engine

std_msgs/Header header

# 元数据
int64 timestamp        # 纳秒时间戳
int64 index            # 消息序列号

string direction
string phase

# 完成百分比 [0, 100]
float32 percent_done

geometry_msgs/Point left_foot_pos
geometry_msgs/Point right_foot_pos
geometry_msgs/Point left_hand_pos
geometry_msgs/Point right_hand_pos
geometry_msgs/Point center_of_mass

bool successful
