if(room == rm_init){
	exit	
}

increase_enemies_count(o_enemy_spawner.spawn_objs_info)

adjust_enemies_amounts();
	
o_play_values_manager.points++
o_play_values_manager.killed_enemies_amount++

if (random(100) <= 3) {
	instance_bonus_create(x, y, o_bonus_mushroom, random_range(1, 2), random_range(0.05, 0.03), random(359), true)	
}

audio_play_sfx_random(snds_deads_arr, 1, random_range(0.85, 1.15));