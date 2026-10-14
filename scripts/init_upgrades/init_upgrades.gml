function init_upgrades(){

	global.upgrades_info = {
		upgrades: {},
		amount: 0,
		total_chance: 0,
		
		loc_grids: {
			descriptions: undefined,
			names: undefined,
		},
		
	};

	upgrade_create("hp", 50, 1, function() {
		with(o_hole_parent) {
			max_hp = 7;
			hp = max_hp;
		}
	});
	upgrade_create("vampire", 50, 4, function() {
		event_add_check_function(EVENTS.ENEMY_EATEN, function(data) {
			if (data.count >= 6) {
				show_message($"enemy count{data.count}");
				o_hole_parent.hp++;	
			}
		});
	});
	upgrade_create("50Combo", 60, 6, function() {
		event_add_check_function(EVENTS.COMBO_INCREASED, function(data) {
			if (data.current_combo >= 80) {
				show_message($"combo increased{data.current_combo}");
				o_hole_parent.hp++;
			}
		})
	});
	upgrade_create("luckyChests", 70, 7, function() {
		event_add_check_function(EVENTS.BONUS_SPAWNED, function(data) {
			if (data.obj.object_index == o_bonus_chest) {
				show_message($"bonus - {data.obj.object_index}");	
				with(data.obj) {								
					var increase_amount = 2;
					min_drop_objs_amount += increase_amount;
					max_drop_objs_amount += increase_amount;
				}
			}
		})
	});

	
	
}