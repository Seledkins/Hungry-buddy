function min_killed_enemies_objs_info_array_sort(enemies_info_array){
	
	if (!is_array(enemies_info_array)) {
		exit;	
	}
	
	array_sort(enemies_info_array, function(current, next) { return current.min_killed_enemies_to_spawn - next.min_killed_enemies_to_spawn });
}