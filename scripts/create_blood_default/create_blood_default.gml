function create_blood_default(count = 15){
	var ps_config = blood_ps_config(sprite_width / 2, sprite_height / 2, x, y, , count)
	create_blood(x, y, sprite_width, sprite_height, ps_config);
}