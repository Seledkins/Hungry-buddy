pause_surf = -1
pause_surf_buffer = -1;

res_w = global.device_width;
res_h = global.device_height;
		
instance_deactivate_object(o_button_pause);

audio_pause_all();
audio_resume_sound(o_snd_manager.current_snd);