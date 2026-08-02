function audio_play_sfx_random(soundid_arr, gain = 1, pitch = 1, priority = 15, loops = false, offset = 0){
	audio_play_sound_random(soundid_arr, priority, loops, gain, offset, pitch)
}