//Calculate direction to mouse cursor
var r = 6;
var t = (sqrt(power(mouse_x - obj_character_visuals.x, 2) + power(mouse_y - obj_character_visuals.y, 2)) - r);

x = (r * mouse_x + t * obj_character_visuals.x) / (r + t);
y = (r * mouse_y + t * obj_character_visuals.y) / (r + t);
