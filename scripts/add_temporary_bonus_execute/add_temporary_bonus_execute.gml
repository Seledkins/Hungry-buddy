function add_temporary_bonus_execute(time_units_seconds, bonus_obj_index, _callback){
	
	var _index = get_index_executed_temporary_bonus(bonus_obj_index);
	var time_source = noone;
	var _exists = false;
	
	if (_index == -1) {
		time_source = time_source_create(time_source_game, infinity, time_source_units_seconds, function() {});

		array_push(o_temporary_bonus_manager.executed_bonuses, {
			time_source_id: time_source,
			obj_index: bonus_obj_index,
			callback: _callback,
			time: time_units_seconds,
		});	
	
		_index = array_length(o_temporary_bonus_manager.executed_bonuses) - 1;
		time_source_reconfigure(time_source, time_units_seconds, time_source_units_seconds, function(callback, _time_source, _bonus_obj_index){ callback(); destroy_temporary_executed_bonus(_bonus_obj_index); }, [_callback, time_source, bonus_obj_index]);	
		
	} else {
		time_source = o_temporary_bonus_manager.executed_bonuses[_index].time_source_id;
		time_source_stop(time_source);
		_exists = true;
	}
	
	time_source_start(time_source);
	
	return {index : _index, exists : _exists, bonus_obj_index : bonus_obj_index};
	
}