if (!show_mushrooms) {
	exit;	
} else if (alpha_show_mushrooms <= 0) {
	show_mushrooms = false;
}

var ydraw = o_health_bar.sprite_height + padding_top + o_health_bar.padding;
var xdraw = o_health_bar.half_sprite_width / 3 + o_health_bar.padding;

outline_set_sprite(sp_bonus_mushroom_ui, 0, ol_config(2, global.color_dark_green, alpha_show_mushrooms));
	draw_sprite_ext(sp_bonus_mushroom_ui, 0, xdraw, ydraw + sprite_mushroom_width / 2, 1, 1, 0, c_white, alpha_show_mushrooms);
outline_end();

draw_text_scribble(xdraw + sprite_mushroom_width + 5 + string_width(eaten_mushrooms) / 2, ydraw + 2, $"[fa_center][fa_middle][fnt_curtsweeper]{dec_color(global.color_white)}[alpha, {alpha_show_mushrooms}]{eaten_mushrooms}");

