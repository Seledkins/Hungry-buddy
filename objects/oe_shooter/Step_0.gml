target_get_required_info(target);

if (sprite_index == sprite_attack) {
	
	if (animation_end()) {
		change_sprite(sprite_idle);
		instance_create_depth(x + projectile_xoffset, y + projectile_yoffset, depth , projectile, {
			sprite_index : sprite_projectile,
			damage : damage,
			speed : projectile_spd,
			direction : point_direction(x, y, targetx, targety),
		})
	}
	
}
else
{
	if (animation_end()) {
		change_sprite(sprite_attack);
	}	
}

close_creature_in_arena();
