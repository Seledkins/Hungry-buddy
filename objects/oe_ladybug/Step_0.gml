target_get_required_info(target);

if (distance_to_target > distance_to_prepare && sprite_index == sprite_run) {
	
	if(cur_spd < max_spd) {
		cur_spd += acceleration;
	}
	
}
else
{
	boom_flag = true;
}

if (boom_flag) {
	
	cur_spd = clamp(cur_spd - acceleration / 2, 0, infinity);
	
	var anim_end = animation_end()
	
	if (anim_end && sprite_index == sprite_run) {
		change_sprite(sprite_attack);
		audio_play_sfx(snd_ladybug_attacking, sprite_attack_speed / 13);
	}
	else if (anim_end && sprite_index == sprite_attack)
	{
		create_expolosion(x, y - y_attack_ratio, damage, distance_to_attack);
	}
	
}

linear_step(cur_spd, targetx, targety);

close_obj_in_arena();
