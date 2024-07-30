if (intro_active) {
			
	if (slide_index < 3) {
		draw_set_color(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
	}
	
	if (slide_index != 3) {
		draw_set_color(c_white);
		draw_sprite(s_popup, 0, view_width / 2, view_height / 2);
	}
	
	draw_set_color(c_black);
	var _text = "";

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
			obj_fade_in.fade_in = true;
		break;
		case 4:
			_text = "In the top left you can see your Lumen bar. \n Don't let it run out. Else you too will loose your light.";
		break;
		case 5:
			_text = "When you press `I` you can open your Inventory."
		break;
		case 6:
			_text = "You can see, that you start out with 3 skills on the right.";
			obj_gui.inventory_open = true;
		break;
		case 7:
			_text = "You can equip 3 skills at the same time. \n Just drag the skills you want to use into your potion lamp.";
		break;
		case 8:
			obj_gui.inventory_open = false;
		case 9:
			_text = "You will find different objects you can interact with. \n For some you have to use your light. \n For others you have to touch them";
		break;
		case 10:
			_text = "There will be enemies. They will be attracted to your light.";
		break;
		case 11:
			_text = "Good luck. \n Might the light stay with you.";
		break;
		case 12:
			intro_active = false;
		break;
	}
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
		
	var _continue_text = "Press any button to continue.";

	draw_text(view_width / 2, view_height / 2, _text);
	
	draw_text(view_width / 2, view_height / 1.5, _continue_text)
	
	if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
		slide_index++;	
	}
}

