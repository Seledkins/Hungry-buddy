function draw_shadow_skew(x_, y_, _sprite_width, skewx = global.shadow_xoffset, skewy = global.shadow_yoffset){

if (!drop_shadow) {
	exit	
}


if(surface_exists(global.shadow_surface)){
	
	surface_set_target(global.shadow_surface);
		gpu_set_fog(true, global.shadow_color, 0, 1);
		
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
		
		gpu_set_fog(false, c_white, 0, 0);
	surface_reset_target();
}
else
{
	shadow_surface_create();
}



}