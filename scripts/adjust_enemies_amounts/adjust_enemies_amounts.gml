function adjust_enemies_amounts(){
	o_enemy_spawner.spawn_objs_info[ds_map_find_value(o_enemy_spawner.enemies_indexes_ds_map, string(object_index))].amount_in_room--
	o_enemy_spawner.all_enemies_amount_in_room--
}