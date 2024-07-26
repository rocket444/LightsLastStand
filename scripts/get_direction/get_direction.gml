// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_direction(_x1, _y1, _x2, _y2){
	var _delta_x = _x2 - _x1;
	var _delta_y = _y2 - _y1;

	var _angle = arctan2(_delta_y, _delta_x);

	var _angle_deg = _angle * (180. / pi);

	if (_angle_deg > 0 && _angle_deg < 180) {
		_angle_deg = 360 - _angle_deg;
	} else if (_angle_deg < 0) {
		_angle_deg =  _angle_deg * -1.;
	}
	
	return _angle_deg;
}