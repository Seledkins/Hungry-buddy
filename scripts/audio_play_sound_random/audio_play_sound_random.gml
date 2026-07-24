function audio_play_sound_random(soundid_arr, priority, loops, gain = 1, offset = 0, pitch = 1){
	
	return audio_play_sound(soundid_arr[irandom(array_length(soundid_arr) - 1)], priority, loops, gain, offset, pitch);	
	
}