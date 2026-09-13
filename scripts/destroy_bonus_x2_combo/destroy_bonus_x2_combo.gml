function destroy_bonus_x2_combo(){

if (is_hole(killer.object_index)) {
	var executed_temporary_bonus_info = add_temporary_bonus_execute(global.save_values_info.bonuses_info.x2_combo.time, id.object_index, function() {
		o_combo_manager.combo_increament = o_combo_manager.combo_increament_prev;
		o_combo_manager.string_styles = $"[fnt_curtsweeper][wheel]{dec_color(global.color_white)}";
	})

	if (executed_temporary_bonus_info.exists == false) {
		o_combo_manager.combo_increament_prev = o_combo_manager.combo_increament;
		o_combo_manager.string_styles = $"[fnt_curtsweeper][wheel][rainbow]";
		
		o_combo_manager.combo_increament *= 2;	
	}

	
	audio_play_sfx(snd_bonus_x2_combo_eaten, 1.5);
}

create_smart_part_system(x, y - sprite_height / 2, ps_bonus_eaten_x2_combo, 50);
instance_destroy();

}