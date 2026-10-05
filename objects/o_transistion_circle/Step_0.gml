var ag_music_gain = audio_group_get_gain(ag_music);

if (!transferred) {
    appearance_procent = lerp(appearance_procent, transferred, appearance_procent_lepr_amount);
	
	if (music_fade) {
		audio_group_set_gain(ag_music, lerp(ag_music_gain, transferred * global.save.settings.music_gain, appearance_procent_lepr_amount));	
	}	
} else {
    var _k = (appearance_procent_lepr_amount * appearance_procent);
    _k = max(_k, 0.001);
    appearance_procent = lerp(appearance_procent, transferred, _k);
	
	if (music_fade) {
		audio_group_set_gain(ag_music, lerp(ag_music_gain, transferred * global.save.settings.music_gain, _k));
	}
}
	


if (appearance_procent == 0) {
	func();
	transferred = true;
	
	x = x_end;
	y = y_end;
}

if (appearance_procent == 1 && transferred) {
	instance_destroy();	
}