con_x = coordinates_to_screen_x(x, y);
con_y = coordinates_to_screen_y(x, y);

depth = -y;

var _shines_in_dir = shine_angle_mnatches_with_mouse(x, y);

var _is_in_range = point_distance(x,y,obj_character.x,obj_character.y) <= max(obj_lantern_light.size / 8, 30);

if (_shines_in_dir && _is_in_range && obj_lantern_light.is_on) {
	has_aggro = true;
	m_speed = 1;
} else {
	has_aggro = false;
	m_speed = 0.1;
	
	if (!alarm[0]) {
		alarm[0] = random(5) * room_speed;	
	}
}

if (!has_aggro) {
	eye_right.size = 1;
	eye_right.str = 0.2;
	
	eye_left.size = 1;
	eye_left.str = 0.2;	
	
	eye_right.x = con_x + 4;
	eye_right.y = con_y;
	
	eye_left.x = con_x - 5;
	eye_left.y = con_y;
} else {
	direction = point_direction(x,y,obj_character.x,obj_character.y);
	
	eye_right.size = 5;
	eye_right.str = 0.5;
	
	eye_left.size = 5;
	eye_left.str = 0.5;
	
	eye_right.x = con_x + 2;
	eye_right.y = con_y + 1;
	
	eye_left.x = con_x - 7;
	eye_left.y = con_y + 1;
}

var _new_x = x + lengthdir_x(m_speed, direction);
var _new_y = y + lengthdir_y(m_speed, direction);


// Check for collision at the new position
if (!place_meeting(_new_x, _new_y, tilemap) && !place_meeting(_new_x, _new_y, tilemap_enemy)) {
    // If no collision, move the enemy
    x = _new_x;
    y = _new_y;
} else {
	direction = random(360);
}

if (place_meeting(x, y, obj_character) && !alarm[2]) {
	alarm[2] = 1 * room_speed;	
}

