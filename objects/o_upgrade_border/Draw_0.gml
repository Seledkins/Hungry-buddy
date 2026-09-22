surface_set_target(o_upgrades_slider.upgrades_surf);

	outline_draw_sprite_ext(sprite_index, image_index,
	relerp(o_upgrades_slider.surfx, o_upgrades_slider.surfx + o_upgrades_slider.surf_w, x, 0, o_upgrades_slider.surf_w),
	relerp(o_upgrades_slider.surfy, o_upgrades_slider.surfy + o_upgrades_slider.surf_h, y, 0, o_upgrades_slider.surf_h),
	1, 1, image_angle, image_blend, 0, ol_config(ol_width, global.color_white));
	
surface_reset_target();