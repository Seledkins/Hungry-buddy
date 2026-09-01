if (room != rm_init) {
	drop_obj_chance = o_bonus_spawner.drop_chance_in_enemy;
	if (!appearance_created) {
		o_enemy_spawner.all_enemies_amount_in_room++;
	}
}