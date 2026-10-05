function message_draw_self(_x, _y){
	draw_set_font(font);
	draw_set_colour(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_alpha(alpha);
		draw_text_scribble(_x, _y, $"[scale, {size}]" + formating + text);
	draw_set_alpha(1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_left);
}