function matrix_to_screen_y(_tx, _ty) {
	return ((_tx + _ty) * (TILE_H * 0.5)) + (SCREEN_H * 0.25);
}

function matrix_to_screen_x(_tx, _ty) {	
	return ((_tx - _ty) * (TILE_W * 0.5)) + (SCREEN_W * 1.1);
}