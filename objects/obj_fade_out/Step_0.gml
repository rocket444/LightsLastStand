if (fade_out) {
    fade_timer += 1;
    if (fade_timer >= fade_timer_max) {
		game_over = true;
    }
}