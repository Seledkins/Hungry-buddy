function enemies_info_init(){
	
	var all_enemies_array = tag_get_assets("enemy");
	var sample_enemy_obj = array_find_index(all_enemies_array, function(enemy){ return enemy == "oe_"});
	array_delete(all_enemies_array, sample_enemy_obj, 1);
	
	global.enemies_info = [];
	global.total_enemies_chances = 0;
	global.enemies_amount = 0;
	var all_enemies_array_length = array_length(all_enemies_array)
	show_debug_message(all_enemies_array);
	
	
	for(var e = 0; e < all_enemies_array_length; e++){
		var enemy = all_enemies_array[e]
		var current_enemy = instance_create_layer(0, 0, "instances", asset_get_index(enemy));
		var current_enemy_chance = current_enemy.chance_to_spawn;
		var test_obly_this_enemy = current_enemy.test_only_this_enemy
		
		if (test_obly_this_enemy){
			global.enemies_info = [];
			e = all_enemies_array_length
		}
		
		array_push(global.enemies_info, {
			enemy_index : current_enemy.object_index,
			array_index : e,
			chance_to_spawn : current_enemy_chance,
			min_killed_enemy_to_spawn : current_enemy.min_killed_enemy_to_spawn,
			spawn_pattern_function : current_enemy.spawn_pattern_function, 
			current_count : current_enemy.current_count,
			enemy_count_increase : current_enemy.enemy_count_increase,
			max_enemy_count : current_enemy.max_enemy_count,
			
		})
		
		global.total_enemies_chances += current_enemy_chance;
		global.enemies_amount++
		
		instance_destroy(current_enemy);
	}
	
	
	
}