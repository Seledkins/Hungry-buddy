gpu_set_blendenable(false);

if (pause) {
	
	surface_set_target(application_surface);
	
		if (surface_exists(pause_surf)) {
			draw_surface(pause_surf, 0, 0);
		} else {
			pause_surf = surface_create(res_w, res_h);
			buffer_set_surface(pause_surf_buffer, pause_surf, 0);
		}
		
	surface_reset_target();
	
	audio_sound_gain(o_snd_manager.current_snd, max_gain);
} 


if (pressed) {

	if (!pause) {
		
		pause = true;
		
		part_system_automatic_draw(o_bubbles_ps_manager.ps_info.ps, false);
		instance_deactivate_all(true);
		
		instance_activate_object(o_play_values_manager);
		instance_activate_object(o_snd_manager);
		instance_activate_object(Camera);
		instance_activate_object(o_developer_tools);
		
		#region buttons create
		
			var text_scale = global.ui_assets_scale;
			var text_formating = $"[scale, {text_scale}][fnt_curtsweeper]"
		
			var padding_block = (padding + 2) * text_scale;
			var padding_left = padding * text_scale;

			var simple_button_startx = Camera.view_x + Camera.view_width + appearance_offset;
			var simple_button_starty = Camera.view_y + Camera.view_height;

			for(var i = 0; i < array_length(buttons_info); i++) {
				var button_info = buttons_info[i];
				var current_text = button_info.text;
			
				var first_button = i == 0;
				var first_padding = (first_button) ? (padding_block / text_scale) : 0;
			
				var button_y = simple_button_starty - padding_block * (i + 1) - padding_block;
			
				var button_inst = instance_create_simple_button
				(
					simple_button_startx,
					button_y,
					simple_button_startx - appearance_offset - string_width(current_text) * text_scale - padding_left,
					button_y,
					text_formating + current_text,
					appearance_offset_speed,
					button_info.callback,
					global.color_dark_white,
					global.color_bright_green
				)	
			
				button_info.inst = button_inst;
			}
		
		#endregion
		
		pause_surf = surface_create(res_w, res_h);
		surface_set_target(pause_surf);
			draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		if (buffer_exists(pause_surf_buffer)) {
			buffer_delete(pause_surf_buffer);
		}
		
		pause_surf_buffer = buffer_create(res_w * res_h * 4, buffer_fixed, 1);
		buffer_get_surface(pause_surf_buffer, pause_surf, 0);
		
		
	}
	else 
	{
		pause = false;
		array_foreach(buttons_info, function(button_info) {instance_destroy(button_info.inst)});
		current_appearance_offset = appearance_offset;
		
		instance_activate_all();
		
		part_system_automatic_draw(o_bubbles_ps_manager.ps_info.ps, true);
		
		if (surface_exists(pause_surf)) {
			surface_free(pause_surf);
		}
		
		if (buffer_exists(pause_surf_buffer)) {
			buffer_delete(pause_surf_buffer);	
		}
		
		audio_sound_gain(o_snd_manager.current_snd, max_gain);
	}
	
}

gpu_set_blendenable(true);
pressed = false;

