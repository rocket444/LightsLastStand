/// @description Render game

var tileData, screenX, screenY, tileIndex, tileZ;

var _bbox_left = sprite_get_bbox_left(s_Static);
var _bbox_right = sprite_get_bbox_right(s_Static);
var _bbox_top = sprite_get_bbox_top(s_Static);
var _bbox_bottom = sprite_get_bbox_bottom(s_Static);

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
	
