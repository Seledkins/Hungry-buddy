function take_damage_circle(x1, y1, radius, creature, damage, notme = true, prec = true){
	
	var damage_give = collision_circle_foreach(x1, y1, radius, creature, notme, prec, false, 
	function(_creature){take_damage(_creature, damage); damage_give = true});
	
	return bool(damage_give);
	
	
}