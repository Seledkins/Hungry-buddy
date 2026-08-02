if (index != undefined && !audio_is_playing(snd_backgrounds[index])) {
	index = irandom(array_length(snd_backgrounds) - 1);
	audio_play_sound(snd_backgrounds[index], 1000, 0);	
}

