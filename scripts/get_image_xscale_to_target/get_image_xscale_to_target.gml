function get_image_xscale_to_target(_image_xscale, myself_x, targetx){
	var scale = sign(myself_x - targetx);
	
	if (scale != 0) {
		return scale;	
	} else {
		return !scale;
	}
}