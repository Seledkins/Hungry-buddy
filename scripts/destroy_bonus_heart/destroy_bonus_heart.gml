function destroy_bonus_heart(){
	if (is_hole(eater.object_index)) {
			eater.hp = clamp(eater.hp + 1, 0, eater.max_hp);
			audio_play_sfx_random_pitch(snd_bonus_heart_eat, 1.5, 0.95, 1.05);
		}
		
	sprite_index = sprite_eated;
	
}