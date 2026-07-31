if(room == rm_init || !eater){
	exit;	
}

if (!create_ps) {
	exit;
}

var part_system_func = function() {
	
		var _ps = part_system_create();
		part_system_draw_order(_ps, true);

		var _ptype1 = part_type_create();
		part_type_sprite(_ptype1, ps_sprite, false, true, true);
		part_type_size(_ptype1, 1, 1, 0, 0);
		part_type_scale(_ptype1, 1, 1);
		part_type_speed(_ptype1, ps_speed, ps_speed, ps_increment, 0);
		part_type_direction(_ptype1, 0, 359, 0, 0);
		part_type_gravity(_ptype1, 0, 270);
		part_type_orientation(_ptype1, 0, 0, 0, 0, true);
		part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
		part_type_alpha3(_ptype1, 1, 1, 0);
		part_type_blend(_ptype1, false);
		part_type_life(_ptype1, ps_min_life, ps_max_life);

		var _pemit1 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit1, -half_sprite_width, half_sprite_width, -half_sprite_height, half_sprite_height, ps_shape_rectangle, ps_distr_linear);
		part_emitter_burst(_ps, _pemit1, _ptype1, ps_count);

		part_system_position(_ps, x, y);
		
		return {ps : _ps, ptype : _ptype1};

}

create_smart_customizable_part_system(x, y + ps_y_offset, ps_max_life, part_system_func, , 800);