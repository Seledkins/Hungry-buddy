function instance_bonus_create(_x, _y, bonus, _speed, _friction, _direction, _invincible){

	var created_bonus = instance_create_layer(_x, _y, o_play_values_manager.layid_bonuses, bonus, {
		speed : _speed,
		friction : _friction,
		direction : _direction,
		invincible : _invincible,
		invincible_time : _speed * 6,
	})
	
	with(created_bonus) {
		alarm[1] = invincible_time;	
	}
	
	return created_bonus

}