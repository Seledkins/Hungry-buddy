function take_damage_place(x_, y_, creature, damage){
	
	var damage_give = false

	instance_place_foreach(x_, y_, creature, function(creature_){ take_damage(creature_, damage); damage_give = true})
	
	return damage_give
	
}