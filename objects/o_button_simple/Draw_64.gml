var _x = x_to_guix(x);
var _y = y_to_guiy(y);

if (text != "") {
	draw_set_color(current_color);
	draw_text_scribble(_x, _y, text);
	draw_set_color(c_white);
} else {
	draw_sprite(sprite_index, image_index, _x, _y);	
}