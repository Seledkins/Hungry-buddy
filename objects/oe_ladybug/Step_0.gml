target_get_required_info(target);

if (distance_to_target <= distance_to_prepare) {
	boom_flag = true;
}

if (boom_flag) {
	
	var anim_end = animation_end()
	
	if (anim_end && sprite_index == sprite_idle) {
		change_sprite(sprite_attack);
		audio_play_sfx(snd_attack);
		alarm[2] = explosion_bep_delay;
	}
	else if (anim_end && sprite_index == sprite_attack)
	{
		create_expolosion(x, y - y_attack_ratio, damage, distance_to_attack);
	}
	
}

close_obj_in_arena();
