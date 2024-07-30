/// @description Reduce lumen when in darkness
if (!obj_lantern_light.is_on) {
	lumen_charge -= 1;
	
	if (lumen_charge < 0) {
		lumen_charge = 0;	
	}
}

