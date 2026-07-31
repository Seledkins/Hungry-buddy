function increase_enemies_count(obj_info_array){

array_foreach(obj_info_array, function(enemy_info){
	
	if(enemy_info.max_enemy_count > enemy_info.current_count) &&
	enemy_info.min_killed_enemies_to_spawn < o_play_values_manager.killed_enemies_amount{
		enemy_info.current_count += enemy_info.enemy_count_increase	
	}
	
})

}