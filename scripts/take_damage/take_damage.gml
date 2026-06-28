function take_damage(creature, damage){
	
	if (!variable_instance_exists(creature, "hp") || creature.invincible) {
		return
	}
	
	creature.hp -= damage;
	
	//show_debug_message($"{creature.object_index} hp: {creature.hp} ---------------------------");
	
	if (creature.hp <= 0) {
		kill_creature(creature);
	}
	
	return creature;
	
}