scribble_anim_pulse(0.1, 0.05);
sprite_fluid = layer_sprite_create(o_play_values_manager.layid_healthbar_fluid, padding, padding, sp_healthbar_fluid);
layer_sprite_xscale(sprite_fluid, sprite_width);
layer_sprite_yscale(sprite_fluid, sprite_width);

fluid_surface = -1;	

layer_script_begin(o_play_values_manager.layid_healthbar_fluid, function() {
	if (!surface_exists(fluid_surface)) {
		fluid_surface = surface_create(sprite_width, sprite_height);	
	}
	
	surface_set_target(o_health_bar.fluid_surface);
})

layer_script_end(o_play_values_manager.layid_healthbar_fluid, function() {
		surface_reset_target();
})

fluid_surface = -1