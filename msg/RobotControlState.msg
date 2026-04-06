# 对齐 Zvalley SDK RemoteControlChange_ 结构
# 话题: /change_cmd  (高层接口，无 rt/ 前缀)
#
# SDK 原始字段 (RemoteControlChange_):
#   key_ (string) -> change_key
#   val_ (string) -> change_value
#
# 注意: SDK 高层结构体无 timestamp/index/header，此处元数据仅供 ROS2 内部使用

std_msgs/Header header   # ROS2 内部使用

# 元数据 (ROS2 内部使用，不映射到 SDK RemoteControlChange_)
int64 timestamp
int64 index

# ── RoboCup 比赛状态枚举 (GameController 下发，向后兼容，ROS2 内部语义) ──
uint8 STATE_INITIAL = 0
uint8 STATE_READY = 1
uint8 STATE_SET = 2
uint8 STATE_PLAYING = 3
uint8 STATE_FINISHED = 4
uint8 state

# ── Zvalley SDK key-value 切换接口 (直接对齐 RemoteControlChange_::key_, val_) ──
# key="status"  val: "init" | "ready" | "rl_gait" | "rl_rule" | "stop"
# key="model"   val: "stil" | "stand" | "run" | "kick" | "hand2" | "mimic" |
#                    "hiphop" | "mojito" | "warmup" | "newdance" | "beyond" |
#                    "year" | "shrug" | "bow" | "salute" | "gentleman" |
#                    "introduce" | "dualhello" | "show" | "flat"
# key="name"    val: 机器人身份标识字符串
string change_key        # 对齐 key_
string change_value      # 对齐 val_
