if (global.show_mouse_cord) {
	draw_set_colour(c_white)
	draw_text_transformed(mouse_x + 10, mouse_y, $"x:{mouse_x} y: {mouse_y}", 0.5, 0.5, 0)
	draw_set_colour(c_white)	
}
