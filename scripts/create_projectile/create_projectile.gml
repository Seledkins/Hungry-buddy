function create_projectile(_x, _y, projectile, _damage, _target, _speed, _direction, _image_speed, addition_variables = {}){
	
	var variables_struct = {
			damage : _damage,
			speed : _speed,
			direction : _direction,
			image_speed : _image_speed,
			image_xscale : other.image_xscale,
			target : _target, 
			
			}
			
	variables_struct = struct_merge(variables_struct, addition_variables)
	
	var cur_projectile = instance_create_layer(_x, _y, o_play_values_manager.layid_projectiles, projectile, variables_struct);
			
	return cur_projectile
}