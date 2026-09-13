global.no_lockstep = true;

destroy_all_temporary_executed_bonuses(true);

with(o_play_values_manager) {
	global.save_values_info.records.eaten_enemies = max(eaten_enemies, global.save_values_info.records.eaten_enemies);
	global.save_values_info.records.mushrooms = max(eaten_mushrooms, global.save_values_info.records.mushrooms);
	global.save_values_info.records.max_combo = max(max_combo, global.save_values_info.records.max_combo);
	global.save_values_info.records.survived_time = max(survived_time, global.save_values_info.records.survived_time);
}

game_over_info_str = $" Eaten monsters: {o_play_values_manager.eaten_enemies}      record: {global.save_values_info.records.eaten_enemies}\n Eaten musrooms: {o_play_values_manager.eaten_mushrooms}      record: {global.save_values_info.records.mushrooms}\n Max combo: {o_play_values_manager.max_combo}      record: {global.save_values_info.records.max_combo}\n Survived time {ms_to_timer_string(o_play_values_manager.survived_time)}      record: {ms_to_timer_string(global.save_values_info.records.survived_time)}";
game_over_msg = show_message_async(game_over_info_str);

save_values();