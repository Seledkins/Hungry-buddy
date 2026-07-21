function draw_on_fluctuation_surface(draw_function){

if(!surface_exists(o_fluctuations_manager.fluctuation_surface)) {
	o_fluctuations_manager.fluctuation_surface = fluctuation_surface_create();	
}

surface_set_target(o_fluctuations_manager.fluctuation_surface);
	draw_function()
surface_reset_target();

}