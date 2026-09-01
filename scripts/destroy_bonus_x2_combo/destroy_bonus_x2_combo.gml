function destroy_bonus_x2_combo(){

var executed_temporary_bonus_info = add_temporary_bonus_execute(global.bonus_x2_combo_time_pre_seconds, id.object_index, function() {
	o_combo_manager.combo_increament = o_combo_manager.combo_increament_prev;
	o_combo_manager.string_styles = $"[fnt_curtsweeper][wheel]{dec_color(global.color_white)}";
})

if (executed_temporary_bonus_info.exists == false) {
	o_combo_manager.combo_increament_prev = o_combo_manager.combo_increament;
	o_combo_manager.string_styles = $"[fnt_curtsweeper][wheel][rainbow]";
}

o_combo_manager.combo_increament *= 2;

create_smart_part_system(x, y - sprite_height / 2, ps_x2_combo, 50);
instance_destroy();

}