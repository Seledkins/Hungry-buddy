function upgrade_add(_key, _name, _description, _sprite_or_index, _cost, _create_callback, _type = "basic"){
	
	 var upgrade_info = {
		key : _key,
		name : _name,
		description : _description,
		cost : _cost,
		create_callback : _create_callback,
		sprite_or_index : _sprite_or_index,
		type : _type,
		children : {},
		level : 0,
		parent : parent,
		
	};
	
	
	
	if (parent != -1) {
		upgrade_parent_set_children(global.upgrades_info, parent, _key, upgrade_info);
	} else {
		struct_set(global.upgrades_info, _key, upgrade_info);	
	}
	
	global.upgrades_amount++;
}