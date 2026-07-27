
if (!instance_exists(o_hole_parent)) {
	exit;	
}

bite_check_func();

if (any_finger_is_pressed) {

	var current_finger = fingers_info[bite_finger]

	if (current_finger.is_pressed && current_finger.first_clicked && o_hole_parent.sprite_index = o_hole_parent.sprite_bite) {
		cayote_bite = true;
	}

}

if (o_hole_parent.sprite_index == o_hole_parent.sprite_idle) {	
	bite_finger = undefined;
	
	with(o_hole_parent){
		
		if (other.cayote_bite) {
			image_index = 0;
			sprite_index = sprite_bite;
			other.cayote_bite = false;
		
		}
		
		array_foreach(other.fingers_info, function(finger) {
			with(finger) {
				first_clicked = false;
				is_pressed_prev = false;
			}
		})
	}
	
}
