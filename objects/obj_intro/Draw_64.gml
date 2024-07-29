if (intro_active) {
	draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_sprite(s_popup, 0, view_width / 2, view_height / 2);
	
	draw_set_color(c_black);
	var _text = "";
	var _continue_text = "Press any button to continue.";

	switch (slide_index) {
		case 0:
		_text = "Welcome to the world of Lumonia.";
		break;
		case 1:
		_text = "This land was once filled with light.\n But now...";
		break;
		case 2:
		_text = "Please save this land and bring back the light.";
		break;
		case 3:
		intro_active = false;
		obj_fade_in.fade_in = true;
		break;
	}
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(view_width / 2, view_height / 2, _text);
	
	draw_text(view_width / 2, view_height / 1.5, _continue_text)
	
	if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
		slide_index++;	
	}
}

