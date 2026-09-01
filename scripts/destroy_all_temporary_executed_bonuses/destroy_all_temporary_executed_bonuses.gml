function destroy_all_temporary_executed_bonuses(_execute_flag = false){
	
	o_temporary_bonus_manager.execute_flag = _execute_flag;
	
	array_foreach(o_temporary_bonus_manager.executed_bonuses, function(executed_bonus_info) {
		time_source_destroy(executed_bonus_info.time_source_id);
		
		if (o_temporary_bonus_manager.execute_flag) {
			executed_bonus_info.callback();
		}
		
	})
	
	o_temporary_bonus_manager.execute_flag = undefined;
}