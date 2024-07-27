var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

if (!place_meeting(x + _xinput, y, tilemap)) {
//Check X
if (!place_meeting(x + _xinput * 1, y, obj_wall)) {
	move_and_collide(_xinput * 1, 0, obj_wall);
}

//Check y
if (!place_meeting(x, y + _yinput * 1, obj_wall)) {
	move_and_collide(0, _yinput, obj_wall);
}

