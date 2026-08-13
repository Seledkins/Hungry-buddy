if (current_snd == undefined || !audio_is_playing(current_snd)) {
	
	current_snd = get_random_sound(snds_backgrounds_arr);
	
	while (array_contains(memory_snds_arr, current_snd)) {
		current_snd = get_random_sound(snds_backgrounds_arr);
	}
	
	audio_play_sound(current_snd, 1000, false);
	
	array_delete(memory_snds_arr, -1, -1);
	array_push(memory_snds_arr, current_snd);
	
}