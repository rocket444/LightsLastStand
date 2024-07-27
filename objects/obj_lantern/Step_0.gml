//Calculate direction to mouse cursor
var r = 6;
var t = (sqrt(power(mouse_x - obj_character.x, 2) + power(mouse_y - obj_character.y, 2)) - r);

x = (r * mouse_x + t * obj_character.x) / (r + t);
y = (r * mouse_y + t * obj_character.y) / (r + t);

depth = -y;