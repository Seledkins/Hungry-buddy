target_get_required_info(target);

dir_to_target = point_direction(x, y, targetx, targety);


if (sprite_index == sprite_idle) {
	
	if (distance_to_target < distance_to_attack && animation_end()) {
		sprite_index = sprite_attack;
		image_index = 0;
		attack_flag = true;
		
		
	}
	
} 

if (attack_flag) {
	
	linear_step(cur_spd, targetx, targety)
	
	sprite_index = sprite_attack
	
	if (image_index >= image_index_start_attack && image_index < image_index_end_attack) {
		take_damage_place(x, y, target, damage);
	}
	
	if (image_index_equals(image_index_start_attack - 2)) {
		snd_attack = audio_play_sfx_random_pitch(snd_ghost_attack, 1.1);	
	}
	
	if (animation_end()) {
		attack_flag = false;
		sprite_index = sprite_idle;
		image_index = 1;
	}
	
}
