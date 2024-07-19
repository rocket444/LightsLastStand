if (obj_lantern_light.size == 0 && !alarm[0]) {
	alarm[0] = decay_time_lumen * room_speed;	
}

if (obj_lantern_light.size > 0 && !alarm[1]) {
	alarm[1] = gain_time_lumen * room_speed;	
}

if (lumen_charge <= critical_lumen && !alarm[2]) {
	alarm[2] = 0.5 * room_speed;	
}