function get_random_upgrade_info(upgrades_info = global.upgrades_info){
	
	var random_chance = random(upgrades_info.total_chance);
	var upgrades_names = struct_get_names(upgrades_info.upgrades);
	
	for(var up = 0; up < upgrades_info.amount; up++) {
		var up_name = upgrades_names[up];
		var up_info = upgrades_info.upgrades[$ up_name];
		var chance = up_info.chance;
		
		if (random_chance <= chance) {
			return up_info;
		}
		
		random_chance -= chance;
	
	}
}