function set_pause_all_temporary_executed_bonuses(_state_to_set){
	
o_temporary_bonus_manager.state_to_set = _state_to_set;

array_foreach(o_temporary_bonus_manager.executed_bonuses, function(executed_bonus_info) {
		if (o_temporary_bonus_manager.state_to_set) {
			time_source_pause(executed_bonus_info.time_source_id)	
		} else {
			time_source_resume(executed_bonus_info.time_source_id)	
		}
		
	})
	
	o_temporary_bonus_manager.state_to_set = undefined;

}