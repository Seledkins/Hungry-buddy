target_get_required_info(target);

var anim_end = animation_end();

if (distance_to_target < distance_to_prepare) {
	in_attack = true;
}

if (in_attack) {
	
		if (sprite_index == sprite_idle && (image_index_equals(9) || anim_end)) {
			sprite_index = sprite_attack;
			image_index = 0;
		}
		
		
		if (sprite_index == sprite_attack) {
			
			if (image_index_equals(image_index_to_attack)) {
				create_projectile(x + projectile_xoffset, y + projectile_yoffset, projectile,
					damage,
					target,
					projectile_spd,
					point_direction(x + projectile_xoffset, y + projectile_yoffset, targetx, targety),
					1,
					{ 
						depth : other.depth - 20,
						life_time : other.projectile_life_time,
					}
					);	
			}
			
			if (anim_end) {
				sprite_index = sprite_idle;	
				in_attack = false;
				image_index = 0;
			}
		}
		
}


close_obj_in_arena();
