function save_values(){
	
	var values_to_save = {
		mushrooms : global.mushrooms,
		bought_upgrades_amount : global.bought_upgrades_amount,
		max_bought_upgrades_amount : global.max_bought_upgrades_amount,
		
		records : {
			mushrooms : global.eaten_mushrooms_record,
			eaten_enemies : global.eaten_enemies_record,
			survived_time : global.survived_time_record,
			max_combo : global.max_combo_record,
			
		}
	}
	
	save_data(values_to_save, "values.sav");
}