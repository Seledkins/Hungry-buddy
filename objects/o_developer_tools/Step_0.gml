if (!global.developer_mode) {
	exit;
}


global.show_all_developer_params_flag = keyboard_check_pressed(vk_f1);

if (keyboard_check_pressed(ord("1")) || global.show_all_developer_params_flag) {
	global.show_enemies_params = !global.show_enemies_params;	
}

if (keyboard_check_pressed(ord("2")) || global.show_all_developer_params_flag) {
	global.show_projectile_1px = !global.show_projectile_1px;
}

if (keyboard_check_pressed(ord("3")) || global.show_all_developer_params_flag) {
	global.spawner_stop = !global.spawner_stop;
	o_spawner_parent.alarm[0] = !global.spawner_stop * o_spawner_parent.spawn_delay;
}

if (keyboard_check_pressed(ord("4")) || global.show_all_developer_params_flag) {
	global.show_hidden_variables = !global.show_hidden_variables;
}

if (keyboard_check_pressed(ord("5")) || global.show_all_developer_params_flag) {
	global.show_fps = !global.show_fps;
}

if (keyboard_check_pressed(ord("6")) || global.show_all_developer_params_flag) {
		global.show_mouse_cord = !global.show_mouse_cord;
}

if (keyboard_check_pressed(ord("7")) || keyboard_check_pressed(vk_f1)) {
		
}

if (keyboard_check_pressed(ord("0")) || keyboard_check_pressed(vk_f1)) {
	show_debug_overlay(!is_debug_overlay_open());
}

var audio_change_gain_step = 0.05

if (keyboard_check(vk_up)) {
	audio_master_gain(audio_get_master_gain(0) + audio_change_gain_step);
}

if (keyboard_check(vk_down)) {
	audio_master_gain(audio_get_master_gain(0) - audio_change_gain_step);
}

audio_change_gain_step = 0.2

if (keyboard_check_pressed(ord("M")) && o_snd_manager.index != undefined && audio_is_playing(o_snd_manager.snd_backgrounds[o_snd_manager.index])) {
	audio_stop_sound(o_snd_manager.snd_backgrounds[o_snd_manager.index]);
	o_snd_manager.index = undefined;
} else if (keyboard_check_pressed(ord("M"))) {
	o_snd_manager.index = 1;	
}

show_debug_message(audio_group_get_gain(ag_music));

if (keyboard_check_pressed(vk_f11)) {
	window_set_fullscreen(!window_get_fullscreen());
}


if (keyboard_check_pressed(vk_escape)) {
	game_end();
}


if (keyboard_check_pressed(ord("R"))) {
	game_over()
}

