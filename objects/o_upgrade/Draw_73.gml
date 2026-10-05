if (choosen_cell == noone ) {
	surface_set_target(o_upgrades_slider.upgrades_surf);

		outline_draw_sprite_ext(sprite_index, image_index,
		relerp(o_upgrades_slider.surfx, o_upgrades_slider.surfx + o_upgrades_slider.surf_w, x, 0, o_upgrades_slider.surf_w),
		relerp(o_upgrades_slider.surfy, o_upgrades_slider.surfy + o_upgrades_slider.surf_h, y, 0, o_upgrades_slider.surf_h),
		1, 1, image_angle, image_blend, image_alpha, ol_config(1, outline_color));
	
	surface_reset_target();
} 

if (inst_border != noone ) {
	outline_draw_sprite(sprite_index, image_index, x, y, ol_config(1, outline_color));	
	draw_sprite_ext(sp_cross, 0, x, y + 2, cross_scale, cross_scale, 0, c_white, 1);
}

