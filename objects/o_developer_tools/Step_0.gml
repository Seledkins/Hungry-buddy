if (!global.developer_mode) {
	exit
}


global.show_all_developer_params_flag = keyboard_check_pressed(vk_f1)

if (keyboard_check_pressed(ord("1")) || global.show_all_developer_params_flag) {
	global.show_enemies_params = !global.show_enemies_params	
}

if (keyboard_check_pressed(ord("2")) || global.show_all_developer_params_flag) {
	global.show_projectile_1px = !global.show_projectile_1px
}

if (keyboard_check_pressed(ord("3")) || global.show_all_developer_params_flag) {
	global.spawner_stop = !global.spawner_stop
	o_spawner.alarm[0] = !global.spawner_stop * o_spawner.spawn_delay
}

if (keyboard_check_pressed(ord("4")) || global.show_all_developer_params_flag) {
		
}

if (keyboard_check_pressed(ord("5")) || global.show_all_developer_params_flag) {
		
}

if (keyboard_check_pressed(ord("6")) || global.show_all_developer_params_flag) {
		global.show_mouse_cord = !global.show_mouse_cord
}

if (keyboard_check_pressed(ord("7")) || keyboard_check_pressed(vk_f1)) {
		
}




if (keyboard_check_pressed(vk_escape)) {
	game_end()	
}


if (keyboard_check_pressed(ord("R"))) {
	game_over()
}