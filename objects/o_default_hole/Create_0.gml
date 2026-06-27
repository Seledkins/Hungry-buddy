if (global.controls_type == "mobile") {
	
	instance_create_depth(0, 0, 0, o_virtual_joystick)
	instance_create_depth(0, 0, 0, o_fingers_detecror)
	
	controls_func = default_hole_mobile_controls
}
else 
	controls_func = default_hole_pc_controls
	
	
instance_create_depth(0, 0, 0, o_bite_button)