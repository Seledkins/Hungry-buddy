function instance_create_auto_type_chose(_x, _y, obj){
	if (is_creature(obj.object_index)) {
		return instance_enemy_create(_x, _y, obj);	
	} else {
		return instance_bonus_create(_x, _y, obj, 0, 0, 0, false)	
	}
}