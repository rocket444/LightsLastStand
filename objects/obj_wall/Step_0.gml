if (is_crystal && (switch_condition <= switch_obj.bat_light.battery_charge)) {
	is_active = false;
	alarm[0] = activate_time * room_speed;
} else if (!alarm[0]) {
	is_active = true;	
}

depth = -y;
