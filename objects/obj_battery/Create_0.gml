con_x = coordinates_to_screen_x(x, y);
con_y = coordinates_to_screen_y(x, y);

bat_light = instance_create_layer(con_x, con_y, "Instances", obj_battery_light);