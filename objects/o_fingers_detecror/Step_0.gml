for(var finger = 0; finger <= fingers_amount_to_check; finger++) {
	variable_instance_set(id, $"finger{finger}_guix", device_mouse_x_to_gui(finger))
	variable_instance_set(id, $"finger{finger}_guiy", device_mouse_y_to_gui(finger))
}
