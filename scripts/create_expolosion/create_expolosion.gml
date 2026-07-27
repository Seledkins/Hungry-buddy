function create_expolosion(_x, _y, _damage, _radius, _target = o_etable_parent, _depth = -room_height){
	
	create_projectile(_x, _y, o_explosion, _damage, _target, 0, 0, 0,
	{
		radius : _radius,
		depth : _depth,
		
		});
	
}