function load_values() {
	
	var values_info = load_data("values.sav");
	
	if (values_info == undefined) {
		return;
	}
	
	global.mushrooms = values_info.mushrooms;
	global.bought_upgrades_amount = values_info.bought_upgrades_amount;
	global.max_bought_upgrades_amount = values_info.max_bought_upgrades_amount;
	
	global.eaten_mushrooms_record = values_info.records.mushrooms;
	global.eaten_enemies_record = values_info.records.eaten_enemies;
	global.survived_time_record = values_info.records.survived_time;
	global.max_combo_record = values_info.records.max_combo;
	
}