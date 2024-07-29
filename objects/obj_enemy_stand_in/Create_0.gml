tilemap = layer_tilemap_get_id("Collission");

con_x = coordinates_to_screen_x(x, y);
con_y = coordinates_to_screen_y(x, y);

m_speed = 0.1;

eye_right = instance_create_layer(con_x + 4, con_y, "Instances", obj_light);
with (eye_right) {
	size = 1;
	str = 0.2;
}

eye_left = instance_create_layer(con_x - 5, con_y, "Instances", obj_light);
with (eye_left) {
	size = 1;
	str = 0.2;
}