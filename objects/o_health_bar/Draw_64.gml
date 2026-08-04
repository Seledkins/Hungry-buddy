if (!instance_exists(o_hole_parent)) {
	exit;	
}


var scale = 1;
draw_sprite_ext(sprite_index, 0, padding + half_sprite_width * scale, padding + half_sprite_height * scale, scale, scale, 0, c_white, 1);
draw_text_scribble(padding + half_sprite_width * scale, padding + half_sprite_height * scale, formating + string(o_hole_parent.hp));

draw_surface(fluid_surface, 0, 0);