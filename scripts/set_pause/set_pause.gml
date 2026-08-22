function set_pause(
		_pause,
		_darken_screen = false,
		_func_pause_enable = function(){ instance_activate_object(o_play_values_manager); instance_activate_object(o_snd_manager); instance_activate_object(Camera); instance_activate_object(o_developer_tools); instance_activate_object(o_ingame_trash_deleter)},
		_func_pause_disable = function(){ instance_activate_all(); part_system_automatic_draw(o_bubbles_ps_manager.ps_info.ps, true);}
	){

	if (_pause) {
		instance_create_depth(0, 0, 0, o_pause, {darken_screen : _darken_screen, func_pause_enable : _func_pause_enable, func_pause_disable : _func_pause_disable});	
	} else {
		instance_destroy(o_pause);	
	}

}