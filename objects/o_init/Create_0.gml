#region resolution and surfaces

	var w = display_get_width()
	var h = display_get_height()
	global.device_widht = max(w, h)
	global.device_height = min(w, h)

	global.shadow_surface = undefined

	room_width = global.device_widht
	room_height = global.device_height
	
	global.sprite_arena_width = sprite_get_width(sp_arena)
	global.sprite_arena_height = sprite_get_width(sp_arena)
	
	global.arena_width_scale = 5
	global.arena_height_scale = 2.5
	
	window_set_fullscreen(true)

#endregion

#region system options

	if (game_get_speed(gamespeed_fps) != 60)
	{
	    game_set_speed(60 ,gamespeed_fps);
	}

	os_lock_orientation(true);
	gml_pragma("MarkTagAsUsed", "enemy");
	global.controls_type = get_controls_type();
	global.mobile_sensitivity = 0.10
	#macro sprite_speed_to_image_index_changing_ratio 0.017
	#macro current_projectile other
	
	shadows_system_init()
	
	global.white_elements_alpha = 0.6;
	
#endregion

#region developer mode

	global.developer_mode = true;
	global.show_all_developer_params_flag = false;
	
	global.show_mouse_cord = false;
	global.show_projectile_1px = false;
	global.show_enemies_params = false;
	global.spawner_stop = false;
	global.show_hidden_variables = false;
	
	instance_create_depth(0, 0, 0, o_developer_tools);

#endregion


//enemies init
enemies_info_init();

instance_destroy();
room_goto(rm_play);