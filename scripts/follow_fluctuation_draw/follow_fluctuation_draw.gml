function follow_fluctuation_draw(follow_fluctuation){
	
	if(!surface_exists(o_fluctuations_manager.fluctuation_surface)) {
		o_fluctuations_manager.fluctuation_surface = arena_size_surface_create();	
	}

	surface_set_target(o_fluctuations_manager.fluctuation_surface);
		part_system_drawit(follow_fluctuation.ps);
	surface_reset_target();
	
}