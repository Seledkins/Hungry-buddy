function spawner_init(spawn_objs_info){
	
	min_killed_enemies_objs_info_array_sort(spawn_objs_info);
	borders_init();

	alarm[0] = spawn_delay;
}