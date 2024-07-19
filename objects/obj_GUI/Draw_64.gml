draw_sprite(s_LBarEmpty, 0, 0, 1);

if (lumen_charge <= 0) {
	lumen_charge = 0;	
}

if (lumen_charge >= 1) {
	draw_sprite(s_LBarStartCell, 0, 0, 1);
}

if (lumen_charge >= 2) {
	for (var i = 0; i < lumen_charge - 1; i += 1) {
		if (i == 7) {
		 break;	
		}
		draw_sprite(s_LBarMiddleCell, 0, 28 * i, 1);
	}
}

if (lumen_charge >= 9) {
	draw_sprite(s_LBarEndCell, 0, 0, 1);
	lumen_charge = 9;
}
