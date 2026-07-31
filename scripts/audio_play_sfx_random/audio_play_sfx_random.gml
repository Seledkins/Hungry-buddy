function audio_play_sfx_random(soundid_arr, pitch = 1, priority = 15, loops = false, gain = 1, offset = 0){
	audio_play_sound_random(soundid_arr, priority, loops, gain, offset, pitch)
}