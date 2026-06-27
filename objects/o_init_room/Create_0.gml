room_width = global.device_widht
room_height = global.device_height

instance_create_layer(room_width / 2, room_height / 2, "WhiteElements", o_arena)
instance_create_depth(0, 0, 0, o_ingame_trash_deleter)
instance_create_depth(0, 0, 0, o_play_values_manager)

instance_create_layer(0, 0, "ShadowManager", o_shadow_manager)

instance_create_layer(room_width / 2, room_height / 2, "Player", o_default_hole)
instance_create_depth(0, 0, 0, o_spawner)

instance_destroy()