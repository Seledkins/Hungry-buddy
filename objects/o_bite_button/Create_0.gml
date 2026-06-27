
bite_check_mobile = function() {
	
	is_pressed = false

	for(var finger = 0; finger <= amount_fingers_to_check; finger++) {
	
		var fingerx = get_fingerx_gui(finger)
		var fingery = get_fingery_gui(finger)
	
		//show_deb_mes_var(nameof(fingerx), fingerx)
		//show_deb_mes_var(nameof(fingery), fingery)
	
		if (fingerx != undefined && point_in_rectangle(fingerx, fingery ,x1_zone_tap, y1_zone_tap, x2_zone_tap, y2_zone_tap) && device_mouse_check_button(finger, mb_left))
			is_pressed = true
	}
	
}

bite_check_pc = function() {
	
	is_pressed = false
	
	if(keyboard_check_pressed(vk_space))
		is_pressed = true
	
}

if (global.controls_type == "mobile") 
	bite_check_func = bite_check_mobile
else
	bite_check_func = bite_check_pc
