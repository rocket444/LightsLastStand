/// @description Draw GUI
/// Lumen Bar
draw_sprite_ext(s_LBarEmpty, 0, 0, 1, size, size, 0, blink? c_white : c_red, 1);

image_blend = c_red;

if (lumen_charge <= 0) {
	lumen_charge = 0;	
}

if (lumen_charge >= 1) {
	draw_sprite_ext(s_LBarStartCell, 0, 0, 1, size, size, 0, blink? c_white : c_red, 1);
}

if (lumen_charge >= 2) {
	for (var i = 0; i < lumen_charge - 1; i += 1) {
		if (i == 7) {
		 break;	
		}
		draw_sprite_ext(s_LBarMiddleCell, 0,  (28 * i) * size, 1, size, size, 0, blink? c_white : c_red, 1);
	}
}

if (lumen_charge >= 9) {
	draw_sprite_ext(s_LBarEndCell, 0, 0, 1, size, size, 0, blink? c_white : c_red, 1);
	lumen_charge = 9;
}


//Ivnentory
if (inventory_open) {
	draw_sprite_ext(s_Invnetory, 0, view_width, view_height / 2, 1, 1, 0, c_white, 1);
	
	var _inv_width = sprite_get_width(s_Invnetory);
	var _inv_height = sprite_get_height(s_Invnetory);
	
	var _slot_width = sprite_get_width(s_Slot);
	var _slot_height = sprite_get_height(s_Slot);
	
	var _inv_gap_top = (view_height - _inv_height) / 2;
	
	var _slot_gap_height = (_inv_height - (amount_of_slots * _slot_height)) / amount_of_slots;  
	
	
	
	// Draw slots
	for (var i = 0; i < amount_of_slots; ++i) {
		var _y_position = _inv_gap_top + _slot_height / 2 + _slot_gap_height / 2 + ((_slot_gap_height + _slot_height) * i);
		var _x_position = view_width - _inv_width / 2;
		
		draw_sprite_ext(s_Slot, 0, _x_position, _y_position, 1, 1, 0, c_white, 1);
		
		slot_array_x[i] = _x_position;
		slot_array_y[i] = _y_position;
	}
	
	
	// Draw selected skill icons
	
	for (var i = 0; i < array_length(skill_array_n); ++i) {
		var _y_position = _inv_gap_top + _slot_height / 2 + _slot_gap_height / 2 + ((_slot_gap_height + _slot_height) * i);
		var _x_position = view_width - _inv_width / 2;
		
		var _sprite =  skill_array_n[i];
	
		if (drag && (_sprite == s_dragged || (skill_array_n[i] == noone && !array_contains(skill_array_n, s_dragged)))) {
				draw_sprite_ext(s_dragged, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 1, 1, 0, c_white, 1);
			} else if (skill_array_x[i] < 0 && skill_array_y[i] < 0 && _sprite != noone) {
				draw_sprite_ext(_sprite, 0, _x_position, _y_position, 1, 1, 0, c_white, 1);
			
				skill_array_x[i] = _x_position;
				skill_array_y[i] = _y_position;	
				skill_array_n[i] = _sprite;
			} else if (skill_array_n[i] != noone) {
				draw_sprite_ext(skill_array_n[i], 0, skill_array_x[i], skill_array_y[i], 1, 1, 0, c_white, 1);
			}
		
	}
}