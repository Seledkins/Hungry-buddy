array_foreach(snd_backgrounds, function(sound) {
	audio_stop_sound(sound);	
})

if (index == undefined) {
	exit;	
}

index = irandom(array_length(snd_backgrounds) - 1);
audio_play_sound(snd_backgrounds[index], 1000, 0);