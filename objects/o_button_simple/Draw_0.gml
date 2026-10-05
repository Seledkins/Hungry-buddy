if (draw_ev != ev_draw) {
	exit;
}

if (text != "") {
	draw_set_color(current_color);
	draw_text_scribble(x, y, text);
	draw_set_color(c_white);
} else {
	outline_draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, ol_config(outline_width, outline_color));	
}