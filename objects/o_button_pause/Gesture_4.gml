// Inherit the parent event
event_inherited();

var func_pause_enable = function() {
	instance_activate_object(o_play_values_manager);
	instance_activate_object(o_snd_manager);
	instance_activate_object(Camera);
	instance_activate_object(o_developer_tools);
	instance_activate_object(o_ingame_trash_deleter);
	instance_activate_object(o_temporary_bonus_manager);
	instance_create_depth(0, 0, 0, o_pause_menu);
	audio_play_sfx_random_pitch(snd_select, 1.4, 0.95, 1.05);
	set_pause_all_temporary_executed_bonuses(true)
	
};

set_pause(!is_pause(), true, func_pause_enable, function() { instance_destroy(o_pause_menu); instance_activate_all();});

