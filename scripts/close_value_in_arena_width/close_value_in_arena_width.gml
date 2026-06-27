function close_value_in_arena_width(value, padding, half_sprite_width = 0){

var line_arena_sprite_width = global.sprite_arena_width / padding + half_sprite_width

return clamp(value, o_arena.bbox_left + line_arena_sprite_width, o_arena.bbox_right - line_arena_sprite_width)

}