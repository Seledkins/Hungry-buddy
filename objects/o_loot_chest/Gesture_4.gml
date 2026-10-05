if (!focused) {
	audio_play_sfx_random_pitch(snd_loot_chest_awake, 2, 0.95, 1.05);
	state = "awake"
	change_sprite(sp_loot_chest_awake);
	
	focused = true;	
	outline_color = global.color_dark_purple;
	audio_play_sfx_random_pitch(snd_select_juicy, 0.96, 0.94, 1.05);
	desc_create_func();
}

taped = true;