# 动画/动作播放消息
# 对应 Zvalley SDK RemoteControlChange_ (key="model") 触发的预设动作

std_msgs/Header header

# 元数据
int64 timestamp        # 纳秒时间戳
int64 index            # 消息序列号

# 来源标识
bool from_hcm

# 内嵌关节指令 (用于自定义逐帧动画，预设动作通过 RobotControlState.change_key/value 触发)
BigHeroX_msg/JointCommand joint_command
