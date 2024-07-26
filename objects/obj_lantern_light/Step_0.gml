x = obj_lantern.x;
y = obj_lantern.y;

var _x1 = obj_character.x;
var _y1 = obj_character.y;
var _x2 = x;
var _y2 = y;

var _delta_x = _x2 - _x1;
var _delta_y = _y2 - _y1;

var _angle = arctan2(_delta_y, _delta_x);

var _angle_deg = _angle * (180. / pi);

if (_angle_deg > 0 && _angle_deg < 180) {
	_angle_deg = 360 - _angle_deg;
} else if (_angle_deg < 0) {
	_angle_deg =  _angle_deg * -1.;
}

dir = _angle_deg;


if (!obj_GUI.inventory_open && mouse_check_button_pressed(mb_left)) {
	if (obj_lantern_light.str > 0) {
		obj_lantern_light.str = 0;	
	} else {
		obj_lantern_light.str = 10;	
	}
}

if (mouse_wheel_up() && fov < 360) {
	fov++;	
}

if (mouse_wheel_down() && fov > 0) {
	fov--;	
}