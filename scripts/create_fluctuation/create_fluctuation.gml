function create_fluctuation(_x, _y, _dispersal_force, _image_speed, _outline_width, start_scale = 0){
	if (_image_speed != 0 && _image_speed != 1) {
		return instance_create_layer(_x, _y, o_play_values_manager.layid_fluctuations, o_fluctuation, {
			dispersal_force : _dispersal_force,
			image_speed : _image_speed,
			outline_width : _outline_width,
			image_xscale : start_scale,
			image_yscale : start_scale,
		
		})
	}
}