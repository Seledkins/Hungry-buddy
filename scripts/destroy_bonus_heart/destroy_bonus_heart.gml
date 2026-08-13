function destroy_bonus_heart(){
	if (is_hole(killer.object_index)) {
			killer.hp = clamp(killer.hp + 1, 0, killer.max_hp);
			audio_play_sfx_random_pitch(snd_bonus_heart_eat, 1.5, 0.95, 1.05);
		}
		
	sprite_index = sprite_eated;
	
}