function projectile_create(_x, _y, sprite, scalex, scaley,  projectile_type = o_projectiole, _create_func = function(projectile){}, _step_func = function(projectile){}, _destroy_func = function(projectile){}){
	return instance_create_depth(_x, _y, 0, projectile_type, {
		create_func : _create_func, 
		step_func : _step_func, 
		destroy_func : _destroy_func,
		image_xscale : scalex,
		image_yscale : scaley,
		sprite_index : sprite, 
		creator : id,
	})
}