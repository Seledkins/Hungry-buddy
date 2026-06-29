function increase_enemies_count(enemies_info_array){

array_foreach(enemies_info_array, function(enemy_info){
	
	if(enemy_info.max_enemy_count > enemy_info.current_count)
	{
		enemy_info.current_count += enemy_info.enemy_count_increase	
	}
	
})

}