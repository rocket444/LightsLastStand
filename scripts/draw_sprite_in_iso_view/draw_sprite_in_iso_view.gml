function draw_sprite_in_iso_view(_x, _y, _sprite){
	var _a_x = coordinates_to_screen_x(_x, _y);
	var _a_y = coordinates_to_screen_y(_x, _y);
	
	draw_sprite(_sprite, 0, _a_x, _a_y);
}