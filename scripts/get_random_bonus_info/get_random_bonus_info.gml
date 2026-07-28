function get_random_bonus_info(obj_info_array){
	var random_chance = random(global.total_bonuses_chances + global.nothing_chance)
	
	for(var b = 0; b < global.bonuses_amount; b++) {
		var current_bonus_info = obj_info_array[b];
		var current_chance_to_spawn = current_bonus_info.chance_to_spawn;
		
		if (random_chance <= current_chance_to_spawn ) {
			return current_bonus_info
		}
		
		random_chance -= current_chance_to_spawn
	}
}