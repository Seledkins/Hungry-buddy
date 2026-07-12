function instance_enemy_create(spawn_x, spawn_y, enemy){
	
	return instance_create_layer(spawn_x, spawn_y, o_play_values_manager.layid_enemies, enemy)
	
}