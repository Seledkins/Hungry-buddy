function bite_check_pc(){

	is_pressed = false;
	var current_finger = fingers_info[0];
	any_finger_is_pressed = false;
	
	if(keyboard_check(vk_space)) {
			
		any_finger_is_pressed = true;
		bite_finger = 0;
			
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