function target_get_required_info(target){
	
	if (target != noone && instance_exists(target)) {
		
		var cur_target = instance_nearest(x, y, target)
		
		targetx = cur_target.x
		targety = cur_target.y
	
		distance_to_target = point_distance(x, y, targetx, targety)	
		
	}
	
}