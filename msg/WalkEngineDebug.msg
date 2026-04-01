std_msgs/Header header

# Current walk phase [0.0, 1.0]
float32 phase

# Requested velocity (x, y, yaw)
float32 cmd_vel_x
float32 cmd_vel_y
float32 cmd_vel_yaw

# Actual velocity being executed
float32 actual_vel_x
float32 actual_vel_y
float32 actual_vel_yaw

# Foot positions in base_footprint frame
geometry_msgs/Point left_foot_pos
geometry_msgs/Point right_foot_pos

# Center of mass position
geometry_msgs/Point center_of_mass

bool is_walking

# Current step duration (seconds)
float32 step_duration
