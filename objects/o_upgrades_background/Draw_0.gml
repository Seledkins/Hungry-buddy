if (!surface_exists(background_surf)) {
	background_surf = surface_create(surf_width, surf_height);	
}

// Очищаем поверхность
surface_set_target(background_surf);
	draw_clear_alpha(c_black, 0);
surface_reset_target();


shader_set(background_shader);

	// --- СТАНДАРТНЫЕ UNIFORM'Ы ---
	shader_set_uniform_f(uni_resolution, surf_width, surf_height, 0);
	shader_set_uniform_f(uni_time, current_time);

	// --- ПАРАМЕТРЫ ЭФФЕКТА (ЧИСЛА) ---
	shader_set_uniform_f(uni_scale, 200.0);       // Масштаб шума
	shader_set_uniform_f(uni_falloff, 200.0);      // Контрастность
	shader_set_uniform_f(uni_speed, 0.04);        // Скорость анимации
	shader_set_uniform_f(uni_spread, 10.0);       // Размах движения

	shader_set_uniform_f(uni_color1, 0.0745098, 0.0941176, 0.2039216);

	shader_set_uniform_f(uni_color2, 0.0941176, 0.1568627, 0.2627451);

	// --- ПРОЗРАЧНОСТЬ ---
	shader_set_uniform_f(uni_alpha, 1.0);


	var ratio = 1.15;
	shader_set_uniform_f(uni_resolution, surf_width * ratio, surf_height * ratio, 0);
	shader_set_uniform_f(uni_time, timer / 65);

	gpu_set_blendenable(false);
		draw_surface(background_surf, Camera.view_x, Camera.view_y);
	gpu_set_blendenable(true);

shader_reset();