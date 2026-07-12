function create_expolosion(_x, _y, _damage, _radius, _target, life_time){
	
	create_projectile(_x, _y, o_explosion, _damage, _target, 0, 0, 0,
	{
		radius : _radius,
		max_life_time : life_time
		});
	
}