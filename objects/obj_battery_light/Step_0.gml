var _is_in_light = shine_angle_mnatches_with_mouse(x, y);

var _is_in_range = point_distance(x,y,obj_character_visuals.x,obj_character_visuals.y) <= obj_lantern_light.size;


if(_is_in_range && _is_in_light && obj_lantern_light.is_on){
   if (!alarm[0]) {
		alarm[0] = 1 * room_speed;		
	}
} else if (!alarm[1]) {
	alarm[1]  = 1 * room_speed;	
}

str = battery_charge;