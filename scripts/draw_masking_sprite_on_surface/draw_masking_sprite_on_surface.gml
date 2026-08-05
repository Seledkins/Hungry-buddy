function draw_masking_sprite_on_surface(sprite, subming, _x, _y){
	
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_black);
		draw_sprite(sprite, subming, _x, _y);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
	
}