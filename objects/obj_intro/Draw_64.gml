if (intro_active) {
	draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_sprite(s_popup, 0, view_width / 2, view_height / 2);
}

