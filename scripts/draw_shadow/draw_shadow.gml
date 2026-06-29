function draw_shadow(x_, y_, _sprite_width){

if (!drop_shadow) {
	exit	
}


if(surface_exists(global.shadow_surface)){
	
	surface_set_target(global.shadow_surface);
		gpu_set_fog(true, global.shadow_color, 0, 1);
		
		draw_sprite_ext(sprite_index, image_index, x_, y_, 1, 1, 0, c_white, 1)
		
		gpu_set_fog(false, c_white, 0, 0);
	surface_reset_target();
}
else
{
	shadow_surface_create();
}



}