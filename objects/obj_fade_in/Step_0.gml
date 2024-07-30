if (fade_in) {
    fade_timer += 1;
	 if (fade_timer >= fade_timer_max) {
        fade_timer = 0;
        fade_in = false;
    }
}
