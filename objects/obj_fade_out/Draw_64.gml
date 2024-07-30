if (fade_out) {
    draw_set_alpha(fade_timer/fade_timer_max);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height,false);
    draw_set_alpha(1);
	draw_set_color(c_white);
}

if (game_over) {
	draw_sprite(s_gameover, 0, 0, 0);
	
	draw_set_color(c_white);
	
	draw_set_valign(fa_middle);
	draw_text(view_width / 2, view_height - 20, "Press any button to try again.");
	
	if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
		room_restart();
	}
}