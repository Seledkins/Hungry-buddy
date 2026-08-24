depth = 500;

background_shader = shd_upgrades_background;

shader_set(background_shader);

// Получаем uniform'ы
uni_resolution = shader_get_uniform(background_shader, "iResolution");
uni_time = shader_get_uniform(background_shader, "iTime");
uni_mouse = shader_get_uniform(background_shader, "iMouse");

uni_scale = shader_get_uniform(background_shader, "uScale");
uni_falloff = shader_get_uniform(background_shader, "uFalloff");
uni_speed = shader_get_uniform(background_shader, "uSpeed");
uni_spread = shader_get_uniform(background_shader, "uSpread");
uni_color1 = shader_get_uniform(background_shader, "uColor1");
uni_color2 = shader_get_uniform(background_shader, "uColor2");
uni_alpha = shader_get_uniform(background_shader, "uAlpha");

shader_reset();

shader_set_uniform_f(uni_mouse, Camera.x, Camera.y, 0);

// Создаём поверхность для рендеринга
surf_width = Camera.view_width;
surf_height = Camera.view_height;
background_surf = surface_create(surf_width, surf_height);

timer = 0;