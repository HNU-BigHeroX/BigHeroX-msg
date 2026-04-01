std_msgs/Header header

uint8 robot_id

uint8 STATE_UNKNOWN = 0
uint8 STATE_UNPENALIZED = 1
uint8 STATE_PENALIZED = 2
uint8 state

# Robot pose in map frame
geometry_msgs/PoseWithCovariance robot_position

# Ball position in map frame
geometry_msgs/PoseWithCovariance ball_absolute

# Observed robots
BigHeroX_msg/RobotRelativeArray robots

float32 time_to_position_at_ball

BigHeroX_msg/Strategy strategy
