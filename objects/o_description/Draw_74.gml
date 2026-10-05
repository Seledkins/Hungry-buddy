if (draw_ev != ev_gui_begin) {
	exit;	
}

var _x = x_to_guix(x);
var _y = y_to_guiy(y);

draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (show_arrow) {	
	draw_sprite_ext(sp_description_arrow, 0, x_to_guix(arrowx), y_to_guiy(arrowy), arrow_scale, arrow_scale, dir_to_cam_center + 180, c_white, image_alpha);
}

draw_set_alpha(image_alpha);

var headery = (_y - sprite_height / 2) + (padding * padding_header_ratio);


if (header != "") {
	draw_set_font(header_font);
	draw_text_scribble_ext(_x, headery, $"[fa_center][fa_top][scale, {header_scale}]{header}", (max_width - padding * 2) * header_scale);
}

draw_set_font(description_font);
draw_text_scribble_ext(_x, headery + header_height + padding, $"[fa_center][fa_top][scale, {description_scale}]{description}", (max_width - padding * 2) * description_scale);

draw_set_alpha(1);