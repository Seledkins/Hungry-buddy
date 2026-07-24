target_get_required_info(target);

var anim_end = animation_end();

if (sprite_index == sprite_attack)
{
	var sprite_index_percent = anim_curve_sprite_get_ratio(jump_anim_curve, image_index, sprite_index) * longest_jump;
	
    cur_spd = sprite_index_percent * spd_ratio;
    drawy -= sprite_index_percent * jump_up_ratio;
	
    linear_step(cur_spd, targetx, targety);
        
    
    if (anim_end)
    {
		var fluctuation_image_speed = sprite_width_main / 6;
		
        change_sprite(sprite_prepare);
		create_fluctuation(x, y - y_attack_ratio, distance_to_attack / 50, fluctuation_image_speed, 4, distance_to_attack / 300);
		take_damage_circle(x, y - y_attack_ratio, distance_to_attack, o_peaceful_parent, damage);
		audio_play_sound_random_land();
    }
}
else if (anim_end)
{	
	//create_fluctuation(x, y - y_attack_ratio, distance_to_attack / 120, sprite_width_main / 10, 2, distance_to_attack / 500);
	change_sprite(sprite_attack);
}

close_creature_in_arena();