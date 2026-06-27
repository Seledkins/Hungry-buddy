function behavior_run_melee_enemy(){

	if (distance_to_target > distance_to_prepare_for_attack) {
	
		sprite_index = sprite_run
	
		cur_spd = enemy_increasing_speed(cur_spd, acceleration, max_spd)
	
	}
	else 
		state = ENEMY_STATES.ATTACK	
	
}