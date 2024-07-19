/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

x = obj_character.x;
y = obj_character.y;

if (mouse_check_button_pressed(mb_left)) {
	if (obj_lantern_light.size > 0) {
		obj_lantern_light.size = 0;	
	} else {
		obj_lantern_light.size = 500;	
	}
}