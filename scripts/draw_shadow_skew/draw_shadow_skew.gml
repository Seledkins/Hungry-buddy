function draw_shadow_skew(x_, y_, _sprite_width, skewx = global.shadow_xoffset, skewy = global.shadow_yoffset){

if (!drop_shadow) {
	exit	
}


if(surface_exists(o_shadow_manager.shadow_surface)){
	
	surface_set_target(o_shadow_manager.shadow_surface);
		
		draw_sprite_pos(sprite_index, image_index,
		x_ - (_sprite_width / 2) - skewx,
		y_ - skewy,	
		x_ + (_sprite_width / 2) - skewx,
		y_ - skewy,
		x_ + (_sprite_width / 2),
		y_,
		x_ - (_sprite_width / 2),
		y_,
		1
		)
		
	surface_reset_target();
}
else
{
	shadow_surface_create();
}



}