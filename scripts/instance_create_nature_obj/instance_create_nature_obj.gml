function instance_create_nature_obj(_x, _y, obj, _speed, _friction, _direction, _invincible, _depth, lay =  o_play_values_manager.layid_nature){
	var nature_obj = instance_create_layer(_x, _y, lay, obj, {
		speed : _speed,
		friction : _friction,
		direction : _direction,
		depth : _depth,
		invincible : _invincible,
		invincible_time : _speed * 6 * _invincible
	});
	
	with (nature_obj) {
		alarm[0] = invincible_time;	
	}
}