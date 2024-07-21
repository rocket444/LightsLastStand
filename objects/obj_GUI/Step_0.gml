// Check Lumen events
if (obj_lantern_light.size == 0 && !alarm[0]) {
	alarm[0] = decay_time_lumen * room_speed;	
}

if (obj_lantern_light.size > 0 && !alarm[1]) {
	alarm[1] = gain_time_lumen * room_speed;	
}

if (lumen_charge <= critical_lumen && !alarm[2]) {
	alarm[2] = 0.5 * room_speed;	
}


// Check inputs

// Check if Inventory is open
if (!inventory_open) {
// If lmb was pressed turn off or on light
if (mouse_check_button_pressed(mb_left)) {
		if (obj_lantern_light.size > 0) {
			obj_lantern_light.size = 0;	
		} else {
			obj_lantern_light.size = 500;	
		}
	}
} else {
// Check what player is doing / pressing in inventory
	var _guix = device_mouse_x_to_gui(0); // Get the mouse position on the GUI layer
	var _guiy = device_mouse_y_to_gui(0);

	if (mouse_check_button_pressed(mb_left)) {
		var _hit = false;
		var _half_slot_height = (sprite_get_height(s_Slot) * size) / 2;
		var _half_slot_widht = (sprite_get_width(s_Slot) * size) / 2;
		
		if (drag) {
			for(i = 0; i < amount_of_slots; ++i) {
			
				var _slo_t_x = slot_array_x[i] - _half_slot_widht;
				var _slo_t_y = slot_array_y[i] - _half_slot_height;
			
				var _slo_b_x = slot_array_x[i] + _half_slot_widht;
				var _slo_b_y = slot_array_y[i] + _half_slot_height;
			
				if (point_in_rectangle(_guix, _guiy, _slo_t_x, _slo_t_y, _slo_b_x, _slo_b_y)) {
					_hit = true;
					
					for(ii = 0; ii < array_length(skill_array_n); ++ii) {
						if (skill_array_n[ii] == s_dragged && (s_dragged != noone)) {
							
							// Bind dragged object to new slot
							skill_array_n[ii] = skill_array_n[i];
							skill_array_n[i] = s_dragged;
							
							// Remove old slot data of dragged object
							skill_array_x[ii] = -sprite_get_width(s_Slot);
							skill_array_y[ii] = -sprite_get_height(s_Slot);
								
							// Set new slot data for dragged object
							skill_array_x[i] = slot_array_x[i];
							skill_array_y[i] = slot_array_y[i];
							
							// Remove dragged object
							s_dragged = noone;	
							drag = false;}
					}
					break;
				}
			}
		} else {
			for(i = 0; i < amount_of_slots; ++i) {
				var _ski_t_x = skill_array_x[i] - _half_slot_widht;
				var _ski_t_y = skill_array_y[i] - _half_slot_height;
			
				var _ski_b_x = skill_array_x[i] + _half_slot_widht;
				var _ski_b_y = skill_array_y[i] + _half_slot_height;
					
				if (point_in_rectangle(_guix, _guiy, _ski_t_x, _ski_t_y, _ski_b_x, _ski_b_y)) {
					_hit = true;
					drag = true;
					s_dragged = skill_array_n[i];
					break;
				}
			}
		}
		
		if (!_hit && drag) {
			// Reset dragged item to original point
			drag = false;
			s_dragged = noone;
		}
	}
}

// Open or close inventory when pressing "I"
if keyboard_check_pressed(ord("I")) {
	inventory_open = !inventory_open;	
}