if (sprite_index != sprite_attack) {
	change_sprite(sprite_attack);
	audio_play_sfx(snd_attack);
	alarm[2] = explosion_bep_delay;
}
