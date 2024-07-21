view_width = view_wport[0];
view_height = view_hport[0];
blink = true;


slot_array_x = array_create(amount_of_slots);
slot_array_y = array_create(amount_of_slots);

skill_array_x = array_create(amount_of_slots, -sprite_get_width(s_Slot));
skill_array_y = array_create(amount_of_slots, -sprite_get_height(s_Slot));
skill_array_n = array_create(amount_of_slots, noone);

for (var i = 0; i < array_length(usable_skills); ++i) {
	if (array_length(skill_array_n) > i) {
		skill_array_n[i] = asset_get_index(usable_skills[i]);	
	}
}

drag = false;
s_dragged = noone;