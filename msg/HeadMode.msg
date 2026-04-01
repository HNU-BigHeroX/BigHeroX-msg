std_msgs/Header header

uint8 MODE_FIXED = 0
uint8 MODE_TRACK_BALL = 1
uint8 MODE_SCAN_FIELD = 2
uint8 MODE_LOOK_AT_POINT = 3
uint8 mode

# Target point when mode=MODE_FIXED or MODE_LOOK_AT_POINT
geometry_msgs/Point target_point

# Joint angles when mode=MODE_FIXED (radians)
float32 pan_angle
float32 tilt_angle
