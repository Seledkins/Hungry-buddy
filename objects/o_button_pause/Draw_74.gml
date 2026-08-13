if (pause) {
	draw_set_colour(c_black);
	draw_set_alpha(0.5);

		draw_rectangle(0, 0, Camera.view_width, Camera.view_height, false);

	draw_set_alpha(1);
	draw_set_colour(c_white);	
}