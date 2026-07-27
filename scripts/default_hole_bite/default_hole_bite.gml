function default_hole_bite() {
	
	if (sprite_index == sprite_idle && (o_bite_button.any_finger_is_pressed)) {
		image_index = 0;
		sprite_index = sprite_bite;
	}
	
	if (sprite_index == sprite_bite) {
		
		if (image_index >= image_index_start_to_bite && image_index <= image_index_end_to_bite) {
			bite(bite_width, bite_height, bite_delay, function(creature){
				take_damage(creature, damage);
			})
		}
	
		if (animation_end()) {
			sprite_index = sprite_idle;
			ds_list_clear(memory_bite_list);
		}
	
	}
	
	
}