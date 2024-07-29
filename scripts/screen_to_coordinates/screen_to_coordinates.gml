function screen_to_coordinates_x(_x, _y){
	return (16 * (((_y - (SCREEN_H * 0.25)) / TILE_H) + ((_x - (SCREEN_W * 1.1)) / TILE_W) - 8)) + 45.38;
}

function screen_to_coordinates_y(_x, _y){
	return (16 * (((_y - (SCREEN_H * 0.25)) / TILE_H) - ((_x - (SCREEN_W * 1.1)) / TILE_W) - 8)) + 94.62;
}