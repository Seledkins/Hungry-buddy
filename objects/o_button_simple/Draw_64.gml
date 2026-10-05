if (draw_ev != ev_gui) {
	exit;
}

var _x = x_to_guix(x);
var _y = y_to_guiy(y);

if (text != "") {
	draw_set_color(current_color);
	draw_text_scribble(_x, _y, text);
	draw_set_color(c_white);
} else {
	outline_draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, ol_config(outline_width, outline_color));	
}