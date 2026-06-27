function close_creature_in_arena(){
	
	var creature_sprite_half_width = sprite_get_width(sprite_index) / 2
	var creature_sprite_half_height = sprite_get_height(sprite_index) / 2

	var line_arena_sprite_width = global.sprite_arena_width / o_arena.closer_arena_ratio + creature_sprite_half_width
	var line_arena_sprite_height = global.sprite_arena_height / o_arena.closer_arena_ratio + creature_sprite_half_height

	x = close_value_in_arena_width(x, o_arena.closer_arena_ratio, creature_sprite_half_width)
	y = close_value_in_arena_height(y, o_arena.closer_arena_ratio, creature_sprite_half_height)

}