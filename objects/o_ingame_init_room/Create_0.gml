set_room_permission();

instance_create_depth(0, 0, 0, o_ingame_trash_deleter);
instance_create_depth(0, 0, 0, o_play_values_manager);

instance_create_layer(room_width / 2, room_height / 2, "Fluctuations", o_arena);
instance_create_layer(0, 0, "Fluctuations", o_fluctuations_manager);
instance_create_layer(0, 0, "Bloods", o_blood_manager);

instance_create_layer(0, 0, "ShadowManager", o_shadow_manager);

instance_create_spawn_appearance(room_width / 2, room_height / 2, o_default_hole, "Player");
instance_create_depth(0, 0, 0, o_enemy_spawner);
instance_create_depth(0, 0, 0, o_bonus_spawner);

instance_create_depth(0, 0, 0, o_snd_manager);
instance_create_depth(0, 0, 0, o_bubbles_ps_manager);

generate_nature_in_arena();

if (global.controls_type == "mobile") {
	init_mobile_ui_ingame();
}

init_ui_ingame();

instance_destroy();