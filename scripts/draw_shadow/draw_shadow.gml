function draw_shadow(x_, y_, shadow_width){

if (!drop_shadow) {
	exit	
}


if(surface_exists(global.shadow_surface)){
	
	var r = shadow_width / 2;
	var dist_to_floor = y - drawy;
	var descr_default_shadow_r = 1;
	
	surface_set_target(global.shadow_surface);
		gpu_set_fog(true, global.shadow_color, 0, 1);
		
		draw_circle(x_, y_, r - (clamp(dist_to_floor * 0.3 + descr_default_shadow_r, descr_default_shadow_r, shadow_width)), false);
		
		gpu_set_fog(false, c_white, 0, 0);
	surface_reset_target();
}
else
{
	shadow_surface_create();
}



}