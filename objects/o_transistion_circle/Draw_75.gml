if (!surface_exists(surf)) {
	surf = surface_create(global.device_width * 2, global.device_height);
}

draw_surface(surf, x_to_guix(x) - surf_w / 2, y_to_guiy(y) - surf_h / 2);

surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_set_color(c_black);
	
	draw_rectangle(0, 0, surf_w, surf_h, false);
	draw_mask_on_surface(function() {
		draw_func();
	});
	
	draw_set_color(c_white);
surface_reset_target();