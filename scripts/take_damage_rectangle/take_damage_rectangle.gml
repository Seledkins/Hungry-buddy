function take_damage_rectangle(x1, y1, x2, y2, creature, damage, notme = true, prec = true){
	
	var damage_give = collision_rectangle_foreach(x1, y1, x2, y2, creature, notme, prec, false, 
	function(_creuture){take_damage(_creuture, damage); damage_give = true});
	
	return bool(damage_give);
	
}