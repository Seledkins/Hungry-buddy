if(room == rm_init || !eater){
	exit;	
}

if (!create_ps) {
	exit;
}

var ps_config = parts_afrer_desrtoy_ps_config(half_sprite_width, half_sprite_height, x, y, ps_speed, ps_increment, ps_min_life, ps_max_life, ps_count, ps_sprite)

create_smart_customizable_part_system(x, y + ps_y_offset, ps_max_life, ps_config, , 800);

if (fluctuanions) {
	create_fluctuation(x, y, fluctuation_dispersal_force, fluctuation_image_speed, fluctuation_outline_width);	
}