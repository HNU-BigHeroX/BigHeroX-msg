# 头部控制接口
# 话题: /head_cmd  (高层接口，无 rt/ 前缀，与 /motion_cmd、/change_cmd 同级)
# SDK 未定义独立的头部 DDS 结构体，通过高层服务或独立话题下发

std_msgs/Header header

# 元数据
int64 timestamp        # 纳秒时间戳
int64 index            # 消息序列号

# 控制模式枚举
uint8 MODE_FIXED = 0
uint8 MODE_TRACK_BALL = 1
uint8 MODE_SCAN_FIELD = 2
uint8 MODE_LOOK_AT_POINT = 3
uint8 mode

# 目标点 (mode=MODE_LOOK_AT_POINT 时有效，base_footprint 坐标系)
geometry_msgs/Point target_point

# 关节角度 (mode=MODE_FIXED 时有效，rad)
float32 pan_angle      # 水平偏转角
float32 tilt_angle     # 垂直俯仰角
