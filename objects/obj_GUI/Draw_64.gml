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
	draw_sprite_ext(s_Invnetory, 0, view_width, view_height / 2, size, size, 0, c_white, 1);
	
	
	var _inv_width = sprite_get_width(s_Invnetory) * size;
	var _inv_height = sprite_get_height(s_Invnetory) * size;
	
	var _lan_width = sprite_get_width(s_lantenrt_inv) * size;
	var _lan_height = sprite_get_height(s_lantenrt_inv) * size;
	
	var _slot_width = sprite_get_width(s_Slot) * size;
	var _slot_height = sprite_get_height(s_Slot) * size;
	
	var _inv_gap_top = (view_height - _inv_height);
	var _lan_gap_top = (view_height - _lan_height) * 2.09;
	
	
	var _lantern_inv_x = view_width - _inv_width - (view_width / 15);
	
	draw_sprite_ext(s_lantenrt_inv, 0, _lantern_inv_x, view_height / 2, size, size, 0, c_white, 1);
	
	var _slot_gap_height_inv = (_inv_height / 1.1 - (amount_of_inv_lines * _slot_height)) / amount_of_inv_lines;  
	var _slot_gap_width_inv = (_inv_width - (amount_of_inv_columns * _slot_width)) / amount_of_inv_columns;  
	
	var _slot_gap_height_lant = (_lan_height / 2.25 - (amount_of_spells * _slot_height)) / amount_of_spells;  
	
	
	
	// Draw spell slots
	for (var i = 0; i < amount_of_spells; ++i) {
		var _y_position = _lan_gap_top + _slot_height / 2 + _slot_gap_height_lant / 2 + ((_slot_gap_height_lant + _slot_height) * i);
		var _x_position = _lantern_inv_x - _lan_width / 2;
		
		draw_sprite_ext(s_Slot, 0, _x_position, _y_position, size, size, 0, c_white, 1);
		
		slot_array_x[i] = _x_position;
		slot_array_y[i] = _y_position;
	}
	
	//Draw Inventory slot
	for (var _y = 0; _y < amount_of_inv_lines; ++_y) {
		for (var _x = 0; _x < amount_of_inv_columns; ++_x) {
		var _y_position = _inv_gap_top + _slot_height / 2 + _slot_gap_height_inv / 2 + ((_slot_gap_height_inv + _slot_height) * _y);
		var _x_position = view_width - _inv_width + (_slot_width / 2 + _slot_gap_width_inv / 2 + ((_slot_gap_width_inv + _slot_width) * _x));
		
		draw_sprite_ext(s_Slot, 0, _x_position, _y_position, size, size, 0, c_white, 1);
		
		slot_array_x[amount_of_spells + (_x + _y * amount_of_inv_columns)] = _x_position;
		slot_array_y[amount_of_spells + (_x + _y * amount_of_inv_columns)] = _y_position;
		}
	}
	
	// Draw selected skill icons in spell slots
	for (var i = 0; i < array_length(skill_array_n); ++i) {
		if (skill_array_n[i] != noone) {
			if (drag && skill_array_n[i] == s_dragged) {
				draw_sprite_ext(skill_array_n[i], 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), size, size, 0, c_white, 1);
			} else {
				if (skill_array_x[i] < 0) {
					skill_array_x[i] = slot_array_x[i];
					skill_array_y[i] = slot_array_y[i];	
				}
					
				draw_sprite_ext(skill_array_n[i], 0, skill_array_x[i], skill_array_y[i], size, size, 0, c_white, 1);
			}
		}
	}
	
}