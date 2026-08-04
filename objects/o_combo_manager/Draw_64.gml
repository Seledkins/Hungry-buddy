fd_rectangle_draw(fdrect_combo_bg, posx - fdrect_combo_width / 2, -fdrect_combo_height / 2.5, 1, 1, global.color_dark_green, 1, false);


var scr_combo = scribble($"{string_styles}X{combo}");

scr_combo
.align(fa_center, fa_center)
.draw(text_posx, text_posy)

show_debug_message(alarm[0] / get_combo_reset_time());

var combo_reset_bar_width = scr_combo.get_width() * clamp(alarm[0] / combo_reset_time, 0, infinity);
var offsetx

if (combo == 1) {
	offsetx = combo_reset_bar_width / 1.6;
} else if (combo == 2) {
	offsetx = combo_reset_bar_width * 1.3;
} else {
	offsetx = combo_reset_bar_width * 2;
}

var offsety = scr_combo.get_height() / 2;

draw_set_colour(global.color_white);
draw_line_width(text_posx - offsetx, text_posy + offsety, text_posx + offsetx, text_posy + offsety, 3);
draw_set_color(c_white);
