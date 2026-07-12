function create_bonus(_x, _y, bonus, _speed, _friction, _direction){

	return instance_create_layer(_x, _y, o_play_values_manager.layid_bonuses, bonus, {
		speed : _speed,
		friction : _friction,
		direction : _direction,
	
	})

}