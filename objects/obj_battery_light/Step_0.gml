//Put this code in the STEP EVENT of the trigger object

if(point_distance(x,y,obj_character.x,obj_character.y) <= 200 && obj_lantern_light.str > 0){
   if (!alarm[0]) {
		alarm[0] = 1 * room_speed;		
	}
} else if (!alarm[1]) {
	alarm[1]  = 1 * room_speed;	
}