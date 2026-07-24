// that needs because shadow keeps up
drawy = y;
drawx = x;


if (hp < prev_hp) {
	invincible = true;
	alarm[0] = invincible_time;
	
	image_alpha = invincible_alpha;
	uc_shake(10, 0.2);
	audio_play_sound(snd_hurt, 20, false, 1, 0, random_range(0.95, 1.05));
}
