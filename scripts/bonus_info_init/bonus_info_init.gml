function bonus_info_init(){

	var all_bonuses_array = tag_get_assets("bonus");
	var sample_bonus_obj = array_find_index(all_bonuses_array, function(bonus){ return bonus == "o_bonus_sample"});
	array_delete(all_bonuses_array, sample_bonus_obj, 1);
	
	global.bonuses_info = [];
	global.total_bonuses_chances = 0;
	global.bonuses_amount = 0;
	var all_bonuses_array_length = array_length(all_bonuses_array)
	show_debug_message(all_bonuses_array);
	
	
	for(var b = 0; b < all_bonuses_array_length; b++){
		var bonus = all_bonuses_array[b]
		var current_bonus = instance_create_layer(0, 0, "instances", asset_get_index(bonus));
		var current_bonus_chance = current_bonus.chance_to_spawn;
		//var test_obly_this_bonus = current_bonus.test_only_this_bonus;
		
		global.bonuses_amount++
		global.total_bonuses_chances += current_bonus_chance;
		
		//if (test_obly_this_bonus){
		//	global.bonuses_info = [];
		//	b = all_bonuses_array_length;
		//	global.bonuses_amount = 1;
		//	global.total_bonuses_chances = current_bonus_chance;
		//}
		
		array_push(global.bonuses_info, {
			bonus_index : current_bonus.object_index,
			array_index : b,
			chance_to_spawn : current_bonus_chance,
			//min_killed_bonus_to_spawn : current_bonus.min_killed_bonus_to_spawn,
			//spawn_pattern_function : current_bonus.spawn_pattern_function, 
			//current_count : current_bonus.current_count,
			//bonus_count_increase : current_bonus.bonus_count_increase,
			//max_bonus_count : current_bonus.max_bonus_count,
			//max_distance_to_border : current_bonus.max_distance_to_border,
			
		})
		
		
		
		instance_destroy(current_bonus);
	}
	
	show_debug_message("----------------------------------------------\n" + string(global.bonuses_info) + "\nbonuses amount:" + string(global.bonuses_amount) + "\nTotal bonuses chances: " + string(global.total_bonuses_chances) + "\n----------------------------------------------");
	

}