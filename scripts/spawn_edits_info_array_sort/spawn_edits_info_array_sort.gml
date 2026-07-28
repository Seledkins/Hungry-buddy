function spawn_edits_info_array_sort(spawn_edits_info){
	
	if (!is_array(spawn_edits_info)) {
		exit;	
	}
	
	array_sort(spawn_edits_info, function(current, next) { return current.min_killed_enemies_to_edit - next.min_killed_enemies_to_edit });
}