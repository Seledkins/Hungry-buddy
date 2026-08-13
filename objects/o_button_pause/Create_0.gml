pause_surf = -1
pause_surf_buffer = -1;

res_w = global.device_width;
res_h = global.device_height;

buttons_info = [
	pause_button_config("RESUME", function(){o_button_pause.pressed = true;}),
	pause_button_config("RESTART", function(){game_over(); audio_sound_gain(o_snd_manager.current_snd, o_button_pause.max_gain);}),
	pause_button_config("SETTINGS", function(){}),
	pause_button_config("MENU", function(){}),
	
];

array_reverse_ext(buttons_info);

values_info = [
	pause_value_config(sp_time_icon, o_play_values_manager, "survived_time", function(survived_time_ms){return ms_to_timer_string(survived_time_ms);}),
	pause_value_config(sp_eaten_enemies_icon, o_play_values_manager, "eaten_enemies"),
	pause_value_config(sp_bonus_mushroom_icon, o_play_values_manager, "eaten_mushrooms"),
]
