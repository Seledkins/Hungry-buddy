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

if (hp > prev_hp && hp == max_hp) {
	instance_create_message(x, y, "MAX HP",,,,$"[rainbow][jitter]")
}