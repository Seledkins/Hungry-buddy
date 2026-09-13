var bg_sprite_scale = 0.88 * appearance_ratio;
draw_sprite_ext(sp_bg_upgrade, 0, x, y, bg_sprite_scale, bg_sprite_scale, current_time / 100, c_white, 1);

draw_set_color(global.color_black);
	draw_line_width(x, y, parent.x, parent.y, 15 * appearance_ratio);
draw_set_colour(c_white);