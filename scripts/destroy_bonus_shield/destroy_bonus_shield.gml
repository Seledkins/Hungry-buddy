function destroy_bonus_shield(){
	
	var shield_info = global.save_values_info.bonuses_info.shield;

	if (is_hole(killer.object_index)) {
		var shield_obj = set_shields(o_hole_parent, shield_info.given_shields);
		
		add_temporary_bonus_execute(shield_info.time, id.object_index, function() {set_shields(o_hole_parent, o_hole_parent.shields - global.save_values_info.bonuses_info.shield.given_shields); call_later(1, time_source_units_frames, function() {uc_shake(0, 0); })});
		audio_play_sfx(snd_bonus_shield_eaten, 1.3);
	}
	
	sprite_index = sprite_eaten;

}