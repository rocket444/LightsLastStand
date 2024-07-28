function char_to_screen_y(_x, _y) {
	var _tx = ((_x + 8) / 16) - 1;
	var _ty = ((_y + 8) / 16) - 1;
	
	var _tile_data = global.theMap[# round(max(_tx, 0)), round(max(_ty, 0))];
	var _tile_z = _tile_data[TILE.Z] + 100;
	
	return ((_tx + _ty) * (TILE_H * 0.5)) + (SCREEN_H * 0.25) + _tile_z;
}

function char_to_screen_x(_x, _y) {
	var _tx = ((_x + 8) / 16) - 1;
	var _ty = ((_y + 8) / 16)- 1;
	
	show_debug_message(_tx);
	show_debug_message(_ty);
	
	return ((_tx - _ty) * (TILE_W * 0.5)) + (SCREEN_W * 1.1);
}