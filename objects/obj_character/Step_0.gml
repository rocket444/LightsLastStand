var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

if (keyboard_check(ord("A")) && image_xscale > 0) {
	image_xscale *= -1;
} else if (keyboard_check(ord("D")) && image_xscale < 0) {
	image_xscale *= -1;
}

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * 1, _yinput * 1, obj_wall);