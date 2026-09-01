function destroy_bonus_shield(){

	if (is_hole(killer.object_index)) {
		var shield_obj = set_shields(o_hole_parent, global.bonus_shields_given_to_player);
		
		add_temporary_bonus_execute(global.bonus_shied_time, id.object_index, function() {set_shields(o_hole_parent, o_hole_parent.shields - global.bonus_shields_given_to_player)});

		sprite_index = sprite_eated;
		audio_play_sfx(snd_bonus_shield_eaten, 1.3);
	}
	
	

}