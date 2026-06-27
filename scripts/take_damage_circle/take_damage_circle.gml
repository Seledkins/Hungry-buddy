function take_damage_circle(x1, y1, radius, creature, damage, notme = true, prec = true){
	
	var damage_give = false
	
	collision_circle_foreach(x1, y1, radius, creature, notme, prec, false, 
	function(_creuture){take_damage(_creuture, damage); damage_give = true})
	
	return damage_give
	
	
}