function behavior_attack_melee_enemy(){
	
	choose_sprite_enemy_attack()
	
	if (image_index_equals(image_index_to_attack)) {
		take_damage_circle(x, y - y_attack_ratio, distance_to_attack, o_peaceful_parent, damage)
	}	
	
	cur_spd = enemy_increasing_speed(cur_spd, -acceleration, max_spd)
	
	if (animation_end() && distance_to_target > distance_to_prepare_for_attack) {
		state = ENEMY_STATES.RUN
	}
	
	
	
	

}