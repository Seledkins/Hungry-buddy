depth = 500

var arena_w = o_arena.arena_width;
var arena_h = o_arena.arena_height;

xoffset_arena_to_border = (Camera.view_width - arena_w) / 2;
yoffset_arena_to_border = (Camera.view_height - arena_h) / 2;

offset_surface_drawx = (o_arena.x - arena_w / 2);
offset_surface_drawy = (o_arena.y - arena_h / 2);

blood_surface_x = offset_surface_drawx;
blood_surface_y = offset_surface_drawy;

blood_surface = arena_size_surface_create();


