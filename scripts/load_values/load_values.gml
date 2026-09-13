function load_values() {
	
	var values_info = load_data("values.sav");
	
	if (values_info == undefined) {
		return;
	}
	
	global.save_values_info = values_info;
	return values_info;
	
	/*global.save_values_info.mushrooms = values_info.mushrooms;
	global.save_values_info.bought_upgrades_amount = values_info.bought_upgrades_amount;
	global.save_values_info.max_bought_upgrades_amount = values_info.max_bought_upgrades_amount;
	
	global.save_values_info.records.mushrooms = values_info.records.mushrooms;
	global.save_values_info.records.eaten_enemies = values_info.records.eaten_enemies;
	global.save_values_info.records.survived_time = values_info.records.survived_time;
	global.save_values_info.records.max_combo = values_info.records.max_combo;*/
	
}