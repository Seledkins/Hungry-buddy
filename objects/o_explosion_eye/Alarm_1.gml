if (outline_color == outline_color1) {
	audio_play_sfx_random_pitch(snd_explosion_bep, 1, 1)
	outline_color = outline_color2;
} else {
	outline_color = outline_color1;	
}



alarm[1] = clamp(speed * 14, 4, infinity);