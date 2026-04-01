uint8 TYPE_LINE = 0
uint8 TYPE_GOALPOST = 1
uint8 TYPE_CORNER = 2
uint8 TYPE_T_JUNCTION = 3
uint8 TYPE_X_JUNCTION = 4
uint8 type

# Feature position relative to robot (base_footprint frame)
geometry_msgs/Point position

# Feature direction (for lines)
geometry_msgs/Vector3 direction

# Detection confidence [0.0, 1.0]
float32 confidence
