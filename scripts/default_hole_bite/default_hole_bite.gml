function default_hole_bite(){
	
	
	if (o_bite_button.is_pressed && sprite_index == sprite_idle) {
		sprite_index = sprite_bite
	}
	
	if (sprite_index == sprite_bite) {
		
		if (image_index >= image_index_start_to_bite && image_index <= image_index_end_to_bite) {
			bite(bite_width, bite_height, function(creature){
				take_damage(creature, damage)
			})
		}	
	
		if (animation_end()) {
			sprite_index = sprite_idle
			
		}
	
	}
	
	
}