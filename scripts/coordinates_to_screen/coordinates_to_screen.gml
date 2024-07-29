function coordinates_to_screen_y(_x, _y) {
	var _tx = ((_x + 8) / 16);
	var _ty = ((_y + 8) / 16);
	
	return ((_tx + _ty) * (TILE_H * 0.5)) + (SCREEN_H * 0.25) + 100;
}

function coordinates_to_screen_x(_x, _y) {
	var _tx = ((_x + 8) / 16);
	var _ty = ((_y + 8) / 16);
	
	return ((_tx - _ty) * (TILE_W * 0.5)) + (SCREEN_W * 1.1) + 100;
}