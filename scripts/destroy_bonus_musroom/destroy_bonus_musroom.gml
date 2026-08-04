function destroy_bonus_musroom(){
	if (is_hole(eater.object_index)) {
		o_play_values_manager.eaten_mushrooms++;
	}
	
	audio_play_sfx_random_pitch(snd_bonus_mushroom_eat, 1.6, 0.95, 1.05);
	sprite_index = sprite_eated;
}