target_get_required_info(target);

if (distance_to_target < distance_to_attack) {
	
	alarm[0] = -1;
	image_speed = 1; 
}	
else {
	
	if (image_index_equals(image_index_to_prepare)) {
		image_speed	= 0;
		image_index = image_index_to_prepare;
		alarm[0] = shake_duration;
	}
}

if (image_index_equals(image_index_to_attack)) {
	
	create_projectile(x + projectile_xoffset, y + projectile_yoffset, projectile,
		damage,
		target,
		projectile_spd,
		point_direction(x + projectile_xoffset, y + projectile_yoffset, targetx, targety),
		(distance_to_attack) / 180,
		1
	)
	
}
	
if (animation_end()) {
	image_index = 0;
}

close_creature_in_arena();
