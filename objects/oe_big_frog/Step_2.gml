if (prev_hp != hp) {
	outline_color = global.color_red;
	shake_force = shake_force_max;
	alarm[0] = 1;
	alarm[1] = 10;
	audio_play_sfx_random(snds_hits_arr);
}