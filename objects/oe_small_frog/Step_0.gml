target_get_required_info(target);

if (sprite_index == sprite_attack)
{
	var sprite_index_percent = anim_curve_sprite_get_ratio(jump_anim_curve, image_index, sprite_index);
	
    cur_spd = sprite_index_percent * spd_ratio;
    drawy -= sprite_index_percent * jump_up_ratio;
	
    linear_step(cur_spd, targetx, targety);
    
    if (image_index > 2 && image_index < 4)
        take_damage_circle(x, y - y_attack_ratio, distance_to_attack, o_peaceful_parent, damage);
    
    if (animation_end())
    {
        change_sprite(sprite_prepare);
    }
}
else if (animation_end())
{ 
	change_sprite(sprite_attack);
}

close_creature_in_arena();