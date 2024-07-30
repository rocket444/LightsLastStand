var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = 0;
var _yinput = 0;

if (_right) {
	_yinput -= 1;	
	_xinput += 1;
}

if (_left) {
	_yinput += 1;
	_xinput -= 1;
}

if (_up) {
	_yinput -= 1;	
	_xinput -= 1;	
}

if (_down) {
	_yinput += 1;	
	_xinput += 1;	
}

var _nearest_wall = instance_nearest(x, y, obj_wall);
if (!(place_meeting(x + _xinput, y + _yinput, _nearest_wall) && _nearest_wall.is_active)) {
	move_and_collide(_xinput / 3, _yinput / 3, tilemap);
}

x = clamp(x,0, room_width);

y= clamp(y,0, room_height);

depth = -y;

