if (instance_exists(o_shadow_manager) && surface_exists(o_shadow_manager.shadow_surface)){
	surface_free(o_shadow_manager.shadow_surface);
}

if (instance_exists(o_fluctuations_manager) && surface_exists(o_fluctuations_manager.fluctuation_surface)){
	surface_free(o_fluctuations_manager.fluctuation_surface);
}
