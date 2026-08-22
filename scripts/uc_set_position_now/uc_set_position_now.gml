function uc_set_position_now(_x, _y){
	
	if (!instance_exists(Camera)) {
		uc_error_message("CODE 01 - The Camera instance does not exist in the room.");
		exit;
	}
	
	with(Camera) {
		x = _x;
		y = _y
		target_x = x;
		target_y = y;
		view_x = _x - view_width / 2;
		view_y = _y - view_height / 2;
	}
}