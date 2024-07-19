if (obj_lantern_light.size == 0 && !alarm[0]) {
	alarm[0] = 2 * room_speed;	
}

if (obj_lantern_light.size > 0 && !alarm[1]) {
	alarm[1] = 1 * room_speed;	
}