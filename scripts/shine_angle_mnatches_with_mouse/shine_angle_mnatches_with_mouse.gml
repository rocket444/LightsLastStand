// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shine_angle_mnatches_with_mouse(_x2, _y2){
	var _x1 = obj_character_visuals.x;
	var _y1 = obj_character_visuals.y;

	var _dir_to_object = get_direction(_x1, _y1, _x2, _y2);

	var _x3 = mouse_x;
	var _y3 = mouse_y;

	var _dir_to_mouse = get_direction(_x1, _y1, _x3, _y3);

	return angles_match_within_margin(_dir_to_object, _dir_to_mouse, obj_lantern_light.fov / 2);
}