function get_index_executed_temporary_bonus(obj_index){

for (var ebi = 0; ebi < array_length(o_temporary_bonus_manager.executed_bonuses); ebi++) {
	var current_executed_bonus_info = o_temporary_bonus_manager.executed_bonuses[ebi];
	
	if (current_executed_bonus_info.obj_index == obj_index) {
		return ebi;
	}
		
}

return -1;

}