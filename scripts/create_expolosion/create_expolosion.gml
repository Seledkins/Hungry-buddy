function create_expolosion(_x, _y, _damage, _radius, life_time, _target = o_etable_parent, _depth = -room_height){
	
	create_projectile(_x, _y, o_explosion, _damage, _target, 0, 0, 0,
	{
		radius : _radius,
		max_life_time : life_time,
		depth : _depth,
		
		});
	
}