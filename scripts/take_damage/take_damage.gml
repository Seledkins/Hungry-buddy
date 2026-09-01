function take_damage(creature, damage, _killer = id){
	
	with(creature) {
		if (!variable_instance_exists(creature, "hp") || invincible) {
			return
		}
	
		if (shields == 0) {
			hp -= damage;
			
			if (hp <= 0) {
				killer = _killer;
				kill_creature(creature);
			}
		} else {
			shields = clamp(shields - damage, 0, infinity);
			if (shields == 0) {
				audio_play_sfx(snd_braek_shield, 1.8);
			}
			// добавить какой-нибудь звук ломания щита, или что-то подобное
			set_invincible(creature, true, 20);
		}
	}
	
	//show_debug_message($"{creature.object_index} hp: {creature.hp} ---------------------------");
	
	return creature;
	
}