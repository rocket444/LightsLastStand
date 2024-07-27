// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_skill_equipped(_sprite){
	var _skill_list = obj_gui.skill_array_n;
	var _amount_of_spell_slots = obj_gui.amount_of_spells;
	
	return array_contains(_skill_list, _sprite, 0., _amount_of_spell_slots);
}