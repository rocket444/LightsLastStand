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

move_and_collide(_xinput * 1, _yinput * 1, tilemap);

x = clamp(x,0, room_width);

y= clamp(y,0, room_height);

depth = -y;

