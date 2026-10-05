if (device_mouse_check_button(0, mb_left)) {
	shader_set_uniform_f(uni_mouse, device_mouse_x_to_gui(0), device_mouse_x_to_gui(0), 0);
}

timer++