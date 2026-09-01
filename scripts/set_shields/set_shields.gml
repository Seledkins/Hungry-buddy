function set_shields(creature, _shields){
	creature.shields = _shields;
	var _shield_inst = instance_create_depth(creature.x, creature.y, creature.depth, o_shield, {target : creature});
	
	return _shield_inst;
}