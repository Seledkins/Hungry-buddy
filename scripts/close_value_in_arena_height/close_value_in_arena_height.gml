function close_value_in_arena_height(value, padding, half_sprite_height = 0){

padding = clamp(padding, 1, infinity);

var line_arena_sprite_height = global.sprite_arena_width / 10 + padding + half_sprite_height;


return clamp(value, o_arena.bbox_top + line_arena_sprite_height, o_arena.bbox_bottom - line_arena_sprite_height);

}