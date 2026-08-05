function color_to_hsv(color) {

	var h = colour_get_hue(color);        // Returns 0 - 255
	var s = colour_get_saturation(color); // Returns 0 - 255
	var v = colour_get_value(color);      // Returns 0 - 255
	
	return make_colour_hsv(h, s, v);
}