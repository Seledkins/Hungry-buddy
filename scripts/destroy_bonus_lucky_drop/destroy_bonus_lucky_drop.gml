function destroy_bonus_lucky_drop(){

if (is_hole(killer.object_index)) {
	if (get_index_executed_temporary_bonus(id.object_index) == -1) {
		var lucky_ratio = global.save_values_info.bonuses_info.lucky_drop.lucky_ratio;
		
		//var chest_info_index = array_find_index(o_bonus_spawner.spawn_objs_info, function(obj_info) { return obj_info.obj_index == o_bonus_chest });
		o_bonus_spawner.previous_drop_chance_in_enemy = o_bonus_spawner.drop_chance_in_enemy;
		o_bonus_spawner.drop_chance_in_enemy = 20 * lucky_ratio;
		
		//o_bonus_spawner.spawn_objs_info[chest_info_index].previous_chance_to_spawn = o_bonus_spawner.spawn_objs_info[chest_info_index].chance_to_spawn;
		//o_bonus_spawner.spawn_objs_info[chest_info_index].chance_to_spawn = 75 * lucky_ratio;
		
		o_hole_parent.outline_color = global.color_bright_green;
	}

	add_temporary_bonus_execute(global.save_values_info.bonuses_info.lucky_drop.time, id.object_index, function() {
		//var chest_info_index = array_find_index(o_bonus_spawner.spawn_objs_info, function(obj_info) { return obj_info.obj_index == o_bonus_chest });
		//o_bonus_spawner.spawn_objs_info[chest_info_index].chance_to_spawn = o_bonus_spawner.spawn_objs_info[chest_info_index].previous_chance_to_spawn;
		o_bonus_spawner.drop_chance_in_enemy = o_bonus_spawner.previous_drop_chance_in_enemy;
		
		o_hole_parent.outline_color = c_black;
	});
	
	audio_play_sfx_random_pitch(snd_bonus_lucky_drop, 1, 0.95, 1.05)
}

sprite_index = sprite_eaten;

}