function destroy_bonus_musroom(){
	if (is_hole(killer.object_index)) {
		o_play_values_manager.eaten_mushrooms++;
		global.save.mushrooms++;
		audio_play_sfx_random_pitch(snd_bonus_mushroom_eat, 2.4, 0.80, 1.15);
	}
	
	sprite_index = sprite_eaten;
}