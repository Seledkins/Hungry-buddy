function init_save_values() {

	global.save_values_info = {
	
		mushrooms: 0,
		bought_upgrades_amount: 0,
		max_bought_upgrades_amount: 20,
		
		records: {
			mushrooms: 0,
			eaten_enemies: 0,
			survived_time: 0,
			max_combo: 0,
			
		},
		
		bonuses_info: {
			
			shield: {
				time: 14,
				given_shields: 1,
			
			},
			
			x2_combo: {
				time: 17,
			
			},
			
			lucky_drop: {
				time: 17,
				lucky_ratio: 1,
				
			},
			
			attract: {
				friction_ratio : 2,	
			},
			
			chest_drop_arr: [],
		},
	
	
	};

	chest_add_drop(o_bonus_mushroom, 1);
	chest_add_drop(o_bonus_heart, 4);
	chest_add_drop(o_bonus_shield, 1);	

	debug_struct(global.save_values_info);
}
