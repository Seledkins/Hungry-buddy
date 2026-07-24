// Inherit the parent event
event_inherited();

dead_function = function() {
	
	sprite_index = sprite_dead;

	if (!self_deleted) {
		self_deleted = true;
		speed = 0;
		create_smart_part_system(x, y, ps_eye_collision_with_creature, 30);	
	}
	
}