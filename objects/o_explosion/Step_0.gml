if (image_index_equals(index_to_take_damage)) {
	
	collision_circle_foreach(x, y, radius, target, false, false, false, function(inst) {
	
		if (is_bonus(inst)) {
			destroy_bonus(inst, id);
		
		} else if (is_creature(inst)) {
			take_damage(inst, damage);	
		}
	})	

}