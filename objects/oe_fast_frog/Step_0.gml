target_get_required_info(target);

var anim_end = animation_end();

if (sprite_index == sprite_attack)
{
	
	image_speed = 1;
	
	var sprite_index_percent = anim_curve_sprite_get_ratio(jump_anim_curve, image_index, sprite_index) * longest_jump;
	
    cur_spd = sprite_index_percent * spd_ratio;
    drawy -= sprite_index_percent * jump_up_ratio;
	
    linear_step(cur_spd, targetx, targety);
       
	if (image_index >= index_to_attack_start && image_index < index_to_attack_end) {
		take_damage_circle(x, y - y_attack_ratio, distance_to_attack, o_peaceful_parent, damage);
	}
    
    if (anim_end)
    {
		if (fast_jumps < max_fast_jumps) {
			fast_jumps++;
		} else {
			fast_jumps = 1;
			fast_attack_flag = true;
		}
		
		var fluctuation_image_speed = sprite_width_main / 6;
		
        change_sprite(sprite_prepare);
		create_fluctuation(x, y - y_attack_ratio, distance_to_attack / 50, fluctuation_image_speed, 4, distance_to_attack / 300);
		audio_play_sound_random_land();
    }
}
else 
{	
	if (fast_jumps > 0 && fast_jumps < max_fast_jumps || fast_attack_flag) {
		image_speed = prepare_speed;
		fast_attack_flag = false;
	}

	if (anim_end) {
		change_sprite(sprite_attack);
	}
}

close_obj_in_arena();