//Calculate direction to mouse cursor
var dir_to_mouse = point_direction(obj_character.x, obj_character.y, mouse_x + 150, mouse_y);

// Determine lantern's position around the character
var radius = 64; // Adjust based on desired distance
var lantern_x = obj_character.x + lengthdir_x(radius, dir_to_mouse);
var lantern_y = obj_character.y + lengthdir_y(radius, dir_to_mouse);

// Update lantern's position
obj_lantern.x = lantern_x;
obj_lantern.y = lantern_y;
