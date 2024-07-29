/// @description Increase Lumen when in light
if (obj_lantern_light.is_on && obj_character.light_creature) {
	lumen_charge += 1;
	
	if (lumen_charge >= 9) {
	 lumen_charge = 9;	
	}
}
