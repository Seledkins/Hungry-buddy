function close_obj_in_arena(){
	
	var creature_sprite_half_width = sprite_get_width(sprite_index) / 2
	var creature_sprite_half_height = sprite_get_height(sprite_index) / 2

	x = close_value_in_arena_width(x, 0, creature_sprite_half_width)
	y = close_value_in_arena_height(y, 0, creature_sprite_half_height)

}