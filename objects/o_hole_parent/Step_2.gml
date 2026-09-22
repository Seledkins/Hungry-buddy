// that needs because shadow keeps up
drawy = y;
drawx = x;


if (hp < prev_hp) {
	set_invincible(id, true, invincible_time);
	reset_combo();
	
	image_alpha = invincible_alpha;
	uc_shake(10, 0.2);
	audio_play_sfx_random(snds_hurts_arr, 1.1);
	create_fluctuation(x, y, sprite_width_main / 50, sprite_width_main / 15, 4, sprite_width_main / 1000);
	
	
}

if (hp > prev_hp) {
	if (hp > round(max_hp / 3)) {
		o_health_bar.color = dec_color(global.color_white);	
	}
	
	if (hp == max_hp) {
		instance_create_message(x, y, "MAX HP",,,,$"[rainbow][jitter]");
	}
	
}

if (shields < shields_prev) {
	uc_shake(8, 0.2);	
}