function set_enemies_indexes_ds_map(spawn_objs_info, ds_map){
	
	for(var ei = 0; ei < array_length(spawn_objs_info); ei++) {
		ds_map_set(ds_map, string(spawn_objs_info[ei].obj_index), ei);	
	}

}