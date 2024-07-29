/// @description Build the map

layer_set_visible("Map", false);
layer_set_visible("Collission", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

tile_map = layer_tilemap_get_id("Map");

for (var _tx = 0; _tx < MAP_W; _tx++) 
{
	for (var _ty = 0; _ty < MAP_H; _ty++) 
	{
		var _tile_map_data = tilemap_get(tile_map, _tx, _ty);
		//This is to make sure that if features like 
		// tileflipping was used that the data is still usable
		_tile_map_data = tile_get_index(_tile_map_data);
		
		//Format [Sprite, Zvalue]
		var _this_tile = [-1, 0];
		_this_tile[TILE.SPRITE] = _tile_map_data;
		_this_tile[TILE.Z] = 0;
		
		global.theMap[# _tx, _ty] = _this_tile;
	}
}