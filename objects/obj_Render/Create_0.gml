/// @description Build the map

layer_set_visible("Map", false);

global.theMap = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("Map");

for (var tX = 0; tX < MAP_W; tX++) 
{
	for (tY = 0; tY < MAP_H; tY++) 
	{
		var tileMapData = tilemap_get(tileMap, tX, tY);
		//This is to make sure that if features like 
		// tileflipping was used that the data is still usable
		tileMapData = tile_get_index(tileMapData);
		
		//Format [Sprite, Zvalue]
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 0;
		
		global.theMap[# tX, tY] = thisTile;
	}
}