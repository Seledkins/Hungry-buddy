array_sort(obj_info_array, function(current, next) { return current.min_killed_enemies_to_spawn - next.min_killed_enemies_to_spawn });
border_right = o_arena.bbox_right;
border_left = o_arena.bbox_left;
border_top = o_arena.bbox_top;
border_bottom = o_arena.bbox_bottom;



//add_spawn_edit_enemy(obj_info_array, oe_frog, oe_mushroom, undefined, 20, 100, undefined, 100);

// sort spawn_edits_info in an ascending order
array_sort(spawn_edits_info, function(current, next) { return current.min_killed_enemies_to_edit - next.min_killed_enemies_to_edit });
alarm[0] = spawn_delay;

