if (battery_charge >= 10) {
	draw_sprite(s_battery_crystal_3, image_index / 20, x, y);
} else if (battery_charge > 5) {
	draw_sprite(s_battery_crystal_2, image_index / 20, x, y);
} else if (battery_charge > 0) {
	draw_sprite(s_battery_crystal_1, image_index / 20, x, y);
} else {
	draw_sprite(s_battery_crystal_0, image_index / 20, x, y);
}
