/// @description Make Lumen Bar blink when low
if (lumen_charge <= critical_lumen && alarm[0]) {
	blink = !blink;
	alarm[2] = 0.5*room_speed;
} else {
	blink = true;
}
