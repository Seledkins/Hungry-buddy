function destroy_temporary_executed_bonus(obj_index){

for (var ebi = 0; ebi < array_length(o_temporary_bonus_manager.executed_bonuses); ebi++) {
	var current_executed_bonus_info = o_temporary_bonus_manager.executed_bonuses[ebi];
	
	if (current_executed_bonus_info.obj_index == obj_index) {
		time_source_destroy(current_executed_bonus_info.time_source_id);
		array_delete(o_temporary_bonus_manager.executed_bonuses, ebi, 1);
	}
		
}

}