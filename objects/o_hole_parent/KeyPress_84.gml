if (!global.developer_mode) {
	exit;	
}

instance_create_spawn_appearance(x, y, o_bonus_chest);
instance_create_bonus(x, y, o_bonus_lucky_drop, 0, 0, 0, false);
