uint8 FOOT_LEFT = 1
uint8 FOOT_RIGHT = 2
uint8 kick_foot

# Kick strength [0.0, 1.0]
float32 kick_strength

# Kick direction relative to robot heading (radians)
float32 kick_direction

# Ball position relative to robot (base_footprint frame)
geometry_msgs/Point ball_position
