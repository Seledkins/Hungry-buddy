target_get_required_info(target);

var anim_end = animation_end();

if (distance_to_target < distance_to_attack) {
	in_attack = true;
} else if (sprite_index == sprite_idle) {
	in_attack = false;	
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
						life_time : other.distance_to_attack / 1.35,
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

//if (distance_to_target < distance_to_attack) {
	
//	if (anim_end || image_index_equals(9) && sprite_index = sprite_idle) {
//		change_sprite(sprite_attack);
//	}

//	if (sprite_index = sprite_attack) {
//		if (image_index_equals(image_index_to_attack)) {
//			create_projectile(x + projectile_xoffset, y + projectile_yoffset, projectile,
//				damage,
//				target,
//				projectile_spd,
//				point_direction(x + projectile_xoffset, y + projectile_yoffset, targetx, targety),
//				0.7 + (1 / distance_to_attack),
//				{ depth : other.depth - 20}
//			);
	
//		}
	
//	}
//}
//else if (anim_end){
	
//	sprite_index = sprite_idle;
//	image_index = 0;
//}




close_creature_in_arena();
