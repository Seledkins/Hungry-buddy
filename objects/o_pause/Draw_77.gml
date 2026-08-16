if (!application_surface_copied) {
	
	part_system_automatic_draw(o_bubbles_ps_manager.ps_info.ps, false);
	instance_deactivate_all(true);

func_pause_enable();
		
if (buffer_exists(pause_surf_buffer)) {
	buffer_delete(pause_surf_buffer);
}
	
	pause_surf = surface_create(res_w, res_h);
	
	surface_set_target(pause_surf);
		draw_surface(application_surface, 0, 0);
	surface_reset_target();
	
	pause_surf_buffer = buffer_create(res_w * res_h * 4, buffer_fixed, 1);
	buffer_get_surface(pause_surf_buffer, pause_surf, 0);
	
	application_surface_copied = true;
	
}

//gpu_set_blendenable(false);
	
surface_set_target(application_surface);
	
	if (surface_exists(pause_surf)) {
		draw_surface(pause_surf, 0, 0);
	} else {
		pause_surf = surface_create(res_w, res_h);
		buffer_set_surface(pause_surf_buffer, pause_surf, 0);
	}
		
surface_reset_target();
	
audio_sound_gain(o_snd_manager.current_snd, min_gain);

//gpu_set_blendenable(true);
