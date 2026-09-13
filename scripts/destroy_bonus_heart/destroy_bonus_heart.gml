function destroy_bonus_heart(){
	if (is_hole(killer.object_index)) {
			killer.hp = clamp(killer.hp + 1, 0, killer.max_hp);
			audio_play_sfx_random_pitch(snd_bonus_heart_eat, 1.5, 0.85, 1.15);
		}
		
	sprite_index = sprite_eaten;
	
}