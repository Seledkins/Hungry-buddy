// Inherit the parent event
event_inherited();

if (!mouse_on_self()) {
	exit;	
}

var func_pause_enable = function() {
	instance_activate_object(o_play_values_manager);
	instance_activate_object(o_snd_manager);
	instance_activate_object(Camera);
	instance_activate_object(o_developer_tools);
	instance_activate_object(o_ingame_trash_deleter);
	instance_create_depth(0, 0, 0, o_pause_menu);
	
};

set_pause(!is_pause(), true, func_pause_enable, function() {instance_destroy(o_pause_menu); instance_activate_all();});

