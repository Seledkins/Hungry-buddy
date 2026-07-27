for(var finger = 0; finger <= fingers_amount_to_check; finger++) {
	
	var xcord = -1;
	var ycord = -1;
	
	if (device_mouse_check_button(finger, mb_left)) {
		xcord = device_mouse_x_to_gui(finger);
		ycord = device_mouse_y_to_gui(finger);
	}
	
	variable_instance_set(id, $"finger{finger}_guix", xcord);
	variable_instance_set(id, $"finger{finger}_guiy", ycord);
	
}
