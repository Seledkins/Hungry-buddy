function init_bubbles_ps(width, height, _x, _y, border_offset){
	//ps_bubbles
	var _ps = part_system_create();
	part_system_draw_order(_ps, true);

	//Emitter
	var _ptype1 = part_type_create();
	part_type_sprite(_ptype1, sp_bubble_part, true, true, false)
	part_type_size(_ptype1, 1, 1, 0, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 0.1, 0.5, 0, 0);
	part_type_direction(_ptype1, 80, 100, 0, 0);
	part_type_gravity(_ptype1, 0, 270);
	part_type_orientation(_ptype1, -40, 40, 0, 0, false);
	part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(_ptype1, 1, 1, 1);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 80, 80);

	var _pemit1 = part_emitter_create(_ps);
	part_emitter_region(_ps, _pemit1, -width / 2 + border_offset, width / 2 - border_offset, -height / 2 + border_offset, height / 2 - border_offset, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(_ps, _pemit1, _ptype1, 1);
	part_emitter_interval(_ps, _pemit1, 0.05, 0.1, time_source_units_seconds);

	part_system_position(_ps, _x, _y);
	part_system_depth(_ps, -room_height);
	
	return {ps : _ps, ptype : _ptype1};

}