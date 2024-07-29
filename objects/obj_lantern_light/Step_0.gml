x = obj_lantern.x;
y = obj_lantern.y;

var _x1 = obj_character_visuals.x;
var _y1 = obj_character_visuals.y;
var _x2 = x;
var _y2 = y;


dir = get_direction(_x1, _y1, _x2, _y2);


if (!obj_gui.inventory_open && mouse_check_button_pressed(mb_left) && obj_character.light_creature && !obj_intro.intro_active) {
	is_on = !is_on;
}

if (is_skill_equipped(s_change_fov)) {
	fov = 50.;
} else {
	fov = 360.;	
}

if (is_skill_equipped(s_add_strength)) {
	str = 10.;
} else {
	str = 5.;	
}

if (is_skill_equipped(s_add_size)) {
	size = 500;
} else {
	size = 10;	
}

if (is_on) {
	str = str;
} else {
	str = 0;	
}
