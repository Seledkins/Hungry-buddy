function upgrade_create(_name, _description, _sprite, _cost, _create_callback){
	array_push(global.upgrades_info, {
		name : _name,
		description : _description,
		cost : _cost,
		create_callback : _create_callback,
		sprite : _sprite,
		
	});
	
	
	global.upgrades_amount++;
}