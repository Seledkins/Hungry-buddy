with(o_play_values_manager) {
	global.eaten_monsters_record = max(eaten_enemies, global.eaten_monsters_record);
	global.eaten_mushrooms_record = max(eaten_mushrooms, global.eaten_mushrooms_record);
	global.max_combo_record = max(max_combo, global.max_combo_record);
	global.survived_time_record = max(survived_time, global.survived_time_record);
}

game_over_info_str = $" Eaten monsters: {o_play_values_manager.eaten_enemies}      record: {global.eaten_monsters_record}\n Eaten musrooms: {o_play_values_manager.eaten_mushrooms}      record: {global.eaten_mushrooms_record}\n Max combo: {o_play_values_manager.max_combo}      record: {global.max_combo_record}\n Survived time {ms_to_timer_string(o_play_values_manager.survived_time)}      record: {ms_to_timer_string(global.survived_time_record)}";
game_over_msg = show_message_async(game_over_info_str);