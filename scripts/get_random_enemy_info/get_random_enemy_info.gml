function get_random_enemy_info(enemies_info_array){

	var random_chance = random(global.total_enemies_chances)
	
	for(var e = 0; e < global.enemies_amount; e++) {
		var current_enemy = enemies_info_array[e]
		var current_chance_to_spawn = current_enemy.chance_to_spawn
		
		if (random_chance <= current_chance_to_spawn && current_enemy.min_killed_enemy_to_spawn <= o_play_values_manager.killed_enemies_amount) {
			return current_enemy
		}
		
		random_chance -= current_chance_to_spawn
	}

	
}