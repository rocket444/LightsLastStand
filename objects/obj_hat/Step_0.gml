/// @description Insert description here
// You can write your code in this editor

x = obj_character_visuals.x;
y = obj_character_visuals.y;

depth = -y - 1;

if (keyboard_check(ord("A")) && image_xscale > 0) {
	image_xscale *= -1;
} else if (keyboard_check(ord("D")) && image_xscale < 0) {
	image_xscale *= -1;
}