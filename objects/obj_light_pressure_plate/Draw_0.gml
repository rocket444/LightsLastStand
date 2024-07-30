draw_sprite(s_light_pressure_plate, 0, con_x, con_y);


if (place_meeting(x, y, obj_character)) {
	is_pressed = true;
} else {
	is_pressed = false;	
}
