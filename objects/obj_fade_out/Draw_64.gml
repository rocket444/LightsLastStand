if (fade_out) {
    draw_set_alpha(fade_timer/fade_timer_max);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height,false);
    draw_set_alpha(1);
	draw_set_color(c_white);
}

if (game_over) {
	draw_sprite(s_gameover, 0, 0, 0);
}