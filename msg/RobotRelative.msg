uint8 TYPE_UNKNOWN = 0
uint8 TYPE_TEAMMATE = 1
uint8 TYPE_OPPONENT = 2
uint8 type

# Detection confidence [0.0, 1.0]
float32 confidence

# Position relative to robot (base_footprint frame)
geometry_msgs/Point position

# Position covariance (3x3 row-major)
float32[9] covariance
