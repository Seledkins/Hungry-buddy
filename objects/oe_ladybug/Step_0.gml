target_get_required_info(target);

if (distance_to_target > distance_to_attack && sprite_index == sprite_run) {
	
	if(cur_spd < max_spd) {
		cur_spd += acceleration;
	}
	
}
else if (cur_spd > 0)
{
	change_sprite(sprite_attack);
	cur_spd -= acceleration / 2;
}

if (sprite_index == sprite_attack && animation_end()) {
	create_expolosion(x, y - y_attack_ratio, damage, distance_to_attack, o_creature, -1);
	//kill_creature(id);
}

linear_step(cur_spd, targetx, targety);

close_creature_in_arena();
