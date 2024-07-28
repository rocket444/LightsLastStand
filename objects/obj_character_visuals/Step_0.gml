/// @description Insert description here
// You can write your code in this editor

x = char_to_screen_x(obj_character.x, obj_character.y);
y = char_to_screen_y(obj_character.x, obj_character.y);

depth = -y;

if (keyboard_check(ord("A")) && image_xscale > 0) {
	image_xscale *= -1;
} else if (keyboard_check(ord("D")) && image_xscale < 0) {
	image_xscale *= -1;
}