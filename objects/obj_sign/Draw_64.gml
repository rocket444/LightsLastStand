if (is_in_range) {
	draw_set_color(c_white);
	var _text = "Press `E`";
	
	draw_set_valign(fa_middle);
	draw_text(view_width / 2, view_height - 20, _text);
	
	if (keyboard_check_pressed(ord("E"))) {
		sign_open = !sign_open;
	}
	
	if (keyboard_check_pressed(vk_escape)) {
		sign_open = false;
	}
} else {
	sign_open = false;
}

if (sign_open) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color(c_white);
	draw_sprite(s_popup, 0, view_width / 2, view_height / 2);
	
	draw_set_color(c_black);
	draw_text(view_width / 2, view_height / 2, sign_text);
}

