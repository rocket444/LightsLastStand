if(keyboard_check(ord("W"))) {
	direction = 90;
	speed = 5;
}
if(keyboard_check(ord("A"))) {
	direction = 180;
	speed = 5;
}
if(keyboard_check(ord("S"))) {
	direction = 270;
	speed = 5;
}
if(keyboard_check(ord("D"))) {
	direction = 0;
	speed = 5;
}

if(keyboard_check(ord("W")) && keyboard_check(ord("D"))) {
	direction = 45;
	speed = 5;
} 
if(keyboard_check(ord("W")) && keyboard_check(ord("A"))) {
	direction = 135;
	speed = 5;
} 
if(keyboard_check(ord("S")) && keyboard_check(ord("A"))) {
	direction = 225;
	speed = 5;
} 
if(keyboard_check(ord("S")) && keyboard_check(ord("D"))) {
	direction = 315;
	speed = 5;
}


if(keyboard_check_released(ord("W") || ord("A") || ord("S") || ord("D"))) {
	speed = 0;
}


polygon = polygon_from_instance(id);
