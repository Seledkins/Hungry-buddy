function draw_shadow(x_, y_, _sprite_width){

if (!drop_shadow) {
	exit	
}


if(surface_exists(o_shadow_manager.shadow_surface)){
	
	surface_set_target(o_shadow_manager.shadow_surface);
		
		draw_sprite_ext(sprite_index, image_index, x_, y_, 1, 1, 0, c_white, 1)
		
	surface_reset_target();
}
else
{
	shadow_surface_create();
}



}