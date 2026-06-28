target_get_required_info(target);

if (sprite_index == sprite_attack) {
	
	if (animation_end()) {
		change_sprite(sprite_idle);
		instance_create_depth(x + projectile_xoffset, y + projectile_yoffset, depth , projectile, {
			sprite_index : sprite_projectile,
			damage : damage,
			speed : projectile_spd,
			direction : point_direction(x, y, targetx, targety),
			max_life_time : distance_to_attack / projectile_spd,
		})
	}
	
}
else
{
	if (animation_end() && point_distance(x, y, targetx, targety) < distance_to_attack) {
		change_sprite(sprite_attack);
	}	
}

close_creature_in_arena();
