function get_random_upgrade_info(upgrades = global.upgrades){
	var upgrades_names = struct_get_names(upgrades);
	var upgrades_names_count = array_length(upgrades_names);
	
	var total_chance = 0;
	for(var up = 0; up < upgrades_names_count; up++) {
		total_chance += upgrades[$ upgrades_names[up]].chance;	
	}
	var random_chance = random(total_chance);
	
	for(var up = 0; up < array_length(upgrades_names); up++) {
		var up_name = upgrades_names[up];
		var up_info = upgrades[$ up_name];
		var chance = up_info.chance;
		
		if (random_chance <= chance) {
			return up_info;
		}
		
		random_chance -= chance;
	
	}
}