function get_random_enemy_info(obj_info_array){

	var random_chance = random(global.total_enemies_chances)
	
	for(var e = 0; e < global.enemies_amount; e++) {
		var current_enemy_info = obj_info_array[e];
		var current_chance_to_spawn = current_enemy_info.chance_to_spawn;
		var enemy_amount_in_room = instance_number(current_enemy_info.obj_index);
		var current_count = floor(current_enemy_info.current_count);
		
		if (random_chance <= current_chance_to_spawn && (current_enemy_info.min_killed_enemies_to_spawn <= o_play_values_manager.killed_enemies_amount || current_enemy_info.test_only_this_enemy) && enemy_amount_in_room < current_count) {
			return current_enemy_info
		}
		
		random_chance -= current_chance_to_spawn
	}

	
}