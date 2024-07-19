var _player_speed = 1.2;

if(keyboard_check(ord("W")) && keyboard_check(ord("D"))) {
	direction = 45;
	speed = _player_speed;
} else if(keyboard_check(ord("W")) && keyboard_check(ord("A"))) {
	direction = 135;
	speed = _player_speed;
} else if(keyboard_check(ord("S")) && keyboard_check(ord("A"))) {
	direction = 225;
	speed = _player_speed;
} else if(keyboard_check(ord("S")) && keyboard_check(ord("D"))) {
	direction = 315;
	speed = _player_speed;
} else if(keyboard_check(ord("W"))) {
	direction = 90;
	speed = _player_speed;
} else if(keyboard_check(ord("A"))) {
	direction = 180;
	speed = _player_speed;
} else if(keyboard_check(ord("S"))) {
	direction = 270;
	speed = _player_speed;
} else if(keyboard_check(ord("D"))) {
	direction = 0;
	speed = _player_speed;
}


if(keyboard_check_released(ord("W") || ord("A") || ord("S") || ord("D"))) {
	speed = 0;
}
