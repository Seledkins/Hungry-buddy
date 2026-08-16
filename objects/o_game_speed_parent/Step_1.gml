if (game_speed_changed) {
	array_foreach(variables_depend_game_speed, function(variable) {
		variable_instance_set(id, variable, variable_instance_get(id, variable) * global.no_lockstep);
	});
	
	game_speed_changed = false;
}