function upgrade_create(_name, _description, _sprite, _min_geted_upgrade_to_create, _chance, _tiers_callbacks){
	array_push(global.upgrades_info, {
		name : _name,
		description : _description,
		min_geted_upgrade_to_create : _min_geted_upgrade_to_create,
		chance : _chance,
		sprite : _sprite,
		
	});
	
	
	for(var tc = 0; tc < argument_count; tc++) {
		var current_argument = argument[tc];
		
		if (!is_method(current_argument)) {
			continue;
		}
		
	}
	
	global.upgrades_amount++;
	global.total_upgrades_chances += _chance;
}