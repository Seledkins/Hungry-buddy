function set_lockstep_time(lockstep, time_on_seconds){
	
	set_lockstep(lockstep);
	
	call_later(time_on_seconds, time_source_units_seconds, function() {
		set_lockstep(false);	
	})
}