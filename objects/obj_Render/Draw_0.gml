/// @description Render game

var tileData, screenX, screenY, tileIndex, tileZ;

for (var tX = 0; tX < MAP_W; tX++)
{
	for (var tY = 0; tY < MAP_H; tY++) 
	{
		tileData = global.theMap[# tX, tY];
		
		show_debug_log(tY)
		show_debug_log(tX)

		
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z] + 100;
		
		if (tileIndex != 0) 
		{
			draw_sprite(s_Static, tileIndex-1, screenX, screenY + tileZ);
		}
	}
}
	
