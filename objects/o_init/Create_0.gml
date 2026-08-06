#region resolution and surfaces

	var w = display_get_width()
	var h = display_get_height()
	global.device_width = max(w, h)
	global.device_height = min(w, h)

	shadow_surface = undefined

	room_width = global.device_width
	room_height = global.device_height
	
	global.sprite_arena_width = sprite_get_width(sp_arena)
	global.sprite_arena_height = sprite_get_width(sp_arena)
	
	global.arena_width_scale = 5
	global.arena_height_scale = 2.5
	
	global.arena_width = global.arena_width_scale * global.sprite_arena_width;
	global.arena_height = global.arena_height_scale * global.sprite_arena_height;
	
	audio_groups_load_all();
	
	if (os_type != os_windows) {
		window_set_fullscreen(true);
	}
	else
	{
		window_set_size(global.device_width / 2, global.device_height / 2);
		show_debug_overlay(true);
	}
	
	scribble_anim_jitter(0.9, 1.1, 0.1);
	
	#macro next_enemy_min_killed_enemies_to_edit "next_enemy_min_killed_enemies_to_edit"
	#macro ui_depth -room_height - 1000

#endregion

#region system options

	if (game_get_speed(gamespeed_fps) != 60)
	{
	    game_set_speed(60 ,gamespeed_fps);
	}

	os_lock_orientation(true);
	global.controls_type = get_controls_type();
	global.mobile_sensitivity = 0.3
	#macro sprite_speed_to_image_index_changing_ratio 0.017
	#macro current_projectile other
	
	shadows_system_init()
	
	global.fluctuations_alpha = 0.6;
	global.color_dark_purple = #170026;
	global.color_red = #A81C1B;
	global.color_dark_red = #7f0d0c;
	global.color_dark_green = #14151A;
	global.color_white = #FFF9DA;
	global.color_bright_green = #425a5e;
	global.color_green = #1c282a;
	global.color_dark_green = #14151a;
	global.color_bright_purple_dark = #261E3F;
	
	global.bright_blood_color = #30265e;
	global.dark_blood_color = global.color_bright_purple_dark;
	
#endregion

#region developer mode

	global.developer_mode = true;
	global.show_all_developer_params_flag = false;
	
	global.show_mouse_cord = false;
	global.show_projectile_1px = false;
	global.show_enemies_params = false;
	global.spawner_stop = false;
	global.show_hidden_variables = false;
	global.show_fps = false;
	
	instance_create_depth(0, 0, 0, o_developer_tools);

#endregion

//objs init
objs_spawn_info_init();

global.eaten_monsters_record = 0;
global.max_combo_record = 0;
global.eaten_mushrooms_record = 0;
global.survived_time_record = 0;

randomise();
instance_destroy();
room_goto(rm_play);