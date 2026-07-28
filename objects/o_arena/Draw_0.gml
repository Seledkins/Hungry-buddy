draw_on_fluctuation_surface(function() {
	
	draw_sprite_ext(sprite_index, image_index,
	x - o_fluctuations_manager.offset_surface_drawx,
	y - o_fluctuations_manager.offset_surface_drawy,
	image_xscale, 
	image_yscale,
	image_angle,
	image_blend,
	image_alpha);
	
});

