function upgrades_tree_load(){
	var upgrades_data = load_data("upgrades.sav");
	
	if (upgrades_data == undefined) {
		return {};	
	}
	
	struct_foreach(upgrades_data, function(upgrade_key, upgrade_info) {
		with(o_upgrade) {
			if (self.key == upgrade_key) {
				self.level = upgrade_info.level;
				self.visual_level = clamp(level, 0, self.max_level - 1);
			}
		}
	})
	
	return upgrades_data;
	
	
}