function set_scripts_enemies_states(run_script, attack_script, stun_script = noone){
	states_array[ENEMY_STATES.RUN] = run_script
	states_array[ENEMY_STATES.ATTACK] = attack_script
	states_array[ENEMY_STATES.STUN] = stun_script
}