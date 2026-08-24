if (surface_exists(application_surface)) {
	if (draw_with_fx) {
		shader_set(shd_basic_fxs);

		shader_set_uniform_f(uni_brightness, brightness);
		shader_set_uniform_f(uni_contrast, contrast);
		shader_set_uniform_f(uni_saturation, saturation);

		draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());
		
		shader_reset();
	} else {
		draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());
	}


}