if (fade_in) {
    draw_set_alpha(1 - fade_timer/fade_timer_max);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height,false);
    draw_set_alpha(1);
}
