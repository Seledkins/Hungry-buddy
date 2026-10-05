function draw_mask_on_surface(draw_function){
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_black);
		draw_function();
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
}