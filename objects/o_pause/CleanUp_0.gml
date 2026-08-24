if (surface_exists(pause_surf)) {
	surface_free(pause_surf);
}
		
if (buffer_exists(pause_surf_buffer)) {
	buffer_delete(pause_surf_buffer);	
}

audio_sound_gain(o_snd_manager.current_snd, max_gain);
