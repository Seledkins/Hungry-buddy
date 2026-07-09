function create_projectile(_x, _y, prejectile, damage, _speed, _direction, _image_speed){
	
	instance_create_depth(_x, _y, depth - 50 , prejectile, {
			damage : damage,
			speed : _speed,
			direction : _direction,
			image_speed : _image_speed,
			image_xscale : other.image_xscale,
		
			});
}