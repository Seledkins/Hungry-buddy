function bite_check_mobile(){

	any_finger_is_pressed = false;

	for (var finger = 0; finger <= amount_fingers_to_check; finger++) {
	
		var current_finger = fingers_info[finger]
	
		var fingerx = get_fingerx_gui(finger);
		var fingery = get_fingery_gui(finger);
		
		show_debug_message($"fingerx: {fingerx} fingery: {fingery}");
	
	
		if ((fingerx != undefined && point_in_rectangle(fingerx, fingery ,x1_zone_tap, y1_zone_tap, x2_zone_tap, y2_zone_tap) && device_mouse_check_button(finger, mb_left))) {
			
			any_finger_is_pressed = true;
			bite_finger = finger;
			
			with(current_finger) {
				is_pressed_prev = is_pressed;
				is_pressed = true;
			}

		}
		else {
			current_finger.is_pressed = false;
		}
		
		
		with(current_finger) {
			if (is_pressed_prev != is_pressed && !first_clicked) {
				first_clicked = true;	
			}
		}
	}

}