view_width = view_wport[0];
view_height = view_hport[0];
blink = true;


var _array_length = amount_of_spells + (amount_of_inv_columns * amount_of_inv_lines);


slot_array_x = array_create(_array_length);
slot_array_y = array_create(_array_length);

skill_array_x = array_create(_array_length, -sprite_get_width(s_Slot));
skill_array_y = array_create(_array_length, -sprite_get_height(s_Slot));
skill_array_n = array_create(_array_length, noone);

for (var i = 0; i < array_length(usable_skills); ++i) {
	if (array_length(skill_array_n) > i + amount_of_spells) {
		skill_array_n[i + amount_of_spells] = asset_get_index(usable_skills[i]);	
	}
}

drag = false;
s_dragged = noone;