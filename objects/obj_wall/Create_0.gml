switch_obj = instance_create_layer(switch_x, switch_y, "Instances", switch_type);

con_x = coordinates_to_screen_x(x, y);
con_y = coordinates_to_screen_y(x, y);

wall_inst = [];

depth = -con_y;

for (var _i = 0; _i < image_yscale; _i++) {
	for (var _ii = 0; _ii < image_xscale; _ii++) {
		var _x = coordinates_to_screen_x(x + _ii * 16, y + _i * 16);
		var _y = coordinates_to_screen_y(x + _ii * 16 - 18, y + _i * 16 - 2);
		wall_inst[_i + _ii] = instance_create_layer(_x, _y, "Instances", obj_rock);
	}
}