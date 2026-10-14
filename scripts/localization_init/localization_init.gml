function localization_init() {
	#region Upgrades
		
		global.upgrades_info.loc_grids.descriptions = csv_load_ext("loc_upgrades_descriptions.csv", true, ";");
		global.upgrades_info.loc_grids.names = csv_load_ext("loc_upgrades_names.csv", true, ";");
		
		struct_foreach(global.upgrades_info.upgrades, function(up_key, up_info) {
			global.upgrades_info.upgrades[$ up_key].description = get_translate(global.upgrades_info.loc_grids.descriptions, up_key);
			global.upgrades_info.upgrades[$ up_key].name = get_translate(global.upgrades_info.loc_grids.names, up_key);
			
		});
		
	#endregion
	

	

}