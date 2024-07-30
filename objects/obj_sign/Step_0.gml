depth = -coordinates_to_screen_y(x ,y);

if (obj_character.light_creature) {
	is_in_range = point_distance(x,y,obj_character.x,obj_character.y) <= activation_range;
} else {
	is_in_range = false;
}