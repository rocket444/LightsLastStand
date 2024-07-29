/// @description Render game

var _tile_data, _screen_x, _screen_y, _tile_index, _tile_z;

for (var _tx = 0; _tx < MAP_W; _tx++)
{
	for (var _ty = 0; _ty < MAP_H; _ty++) 
	{
		_tile_data = global.theMap[# _tx, _ty];
		
		_screen_x = matrix_to_screen_x(_tx, _ty);
		_screen_y = matrix_to_screen_y(_tx, _ty);
		
		_tile_index = _tile_data[TILE.SPRITE];
		
		if (_tile_index != 0) 
		{
			draw_sprite(s_Static, _tile_index-1, _screen_x + 100, _screen_y + 100);
		}
	}
}
	