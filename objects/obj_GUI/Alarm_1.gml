/// @description Increase Lumen when in light
if (obj_lantern_light.size > 0) {
	lumen_charge += 1;
	
	if (lumen_charge >= 9) {
	 lumen_charge = 9;	
	}
}
