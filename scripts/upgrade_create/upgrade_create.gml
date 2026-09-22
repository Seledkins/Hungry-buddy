function upgrade_create(_key, _chance, _index_sprite, _callback) {
	
	var info_struct = {
		key : _key,
		callback: _callback,
		chance: _chance,
		index_sprite: _index_sprite,
		
	}
	
	global.upgrades_info.upgrades[$ _key] = info_struct;
	global.upgrades_info.amount++
	global.upgrades_info.total_chance += _chance;
	
	return info_struct;
	
}