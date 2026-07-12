function draw_self_outline(drawx, drawy, sprite_draw, outline_width, outline_color){
	
	if (draw_outline) {
		outline_set_sprite(sprite_draw, image_index, ol_config(1, outline_color));
			draw_sprite_ext(sprite_draw, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		outline_end();
	} else {
		draw_sprite_ext(sprite_draw, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);	
	}
	
}