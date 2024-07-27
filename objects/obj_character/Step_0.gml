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

//Check X
if (!place_meeting(x + _xinput * 1, y, obj_wall)) {
	move_and_collide(_xinput * 1, 0, obj_wall);
}

//Check y
if (!place_meeting(x, y + _yinput * 1, obj_wall)) {
	move_and_collide(0, _yinput, obj_wall);
}


//move_and_collide(_xinput * 1, _yinput * 1, obj_testing);

depth = -y;