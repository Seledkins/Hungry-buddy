draw_set_font(font);
draw_set_colour(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_alpha(alpha);
	draw_text_scribble(x_to_guix(x, global.gui_width), y_to_guiy(y, global.gui_height), $"[scale, {size}]" + formating + text);
draw_set_alpha(1);
draw_set_valign(fa_left);
draw_set_halign(fa_left);