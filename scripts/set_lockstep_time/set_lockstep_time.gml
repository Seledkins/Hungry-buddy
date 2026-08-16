function set_lockstep_time(lockstep, time_on_frames){
	
	set_lockstep(lockstep);
	
	call_later(time_on_frames, time_source_units_frames, function() {
		set_lockstep(false);	
	})
}