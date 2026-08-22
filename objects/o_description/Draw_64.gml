var _x = x_to_guix(x);
var _y = y_to_guiy(y);

draw_set_alpha(image_alpha);

var headery = (_y - sprite_height / 2) + (padding * padding_header_ratio);


if (header != "") {
	draw_set_font(header_font);
	draw_text_scribble_ext(_x, headery, $"[fa_center][fa_top][scale, {header_scale}]{header}", (max_width - padding * 2) * header_scale);
}

draw_set_font(description_font);
draw_text_scribble_ext(_x, headery + header_height + padding, $"[fa_center][fa_top][scale, {description_scale}]{description}", (max_width - padding * 2) * description_scale);

draw_set_alpha(1);