if(room == rm_init){
	exit	
}

increase_enemies_count(o_spawner_parent.enemies_info_array)
o_play_values_manager.killed_enemies_amount++
o_play_values_manager.points++

if (random(100) <= 5) {
	create_bonus(x, y, o_bonus_mushroom, random_range(1, 2), random_range(0.005, 0.01), random(359))	
}

audio_play_sound(snd_dead, 10, false, 1, 0, random_range(0.83, 1.16));