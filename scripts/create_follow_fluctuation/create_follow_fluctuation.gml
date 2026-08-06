function create_follow_fluctuation(_target, _x, _y, _dependence_variable_str, _dependence_ratio, scale){
	//ps_follow_fluctuaiton
	var _ps = part_system_create();
	part_system_automatic_draw(_ps, false);

	//Emitter
	var _ptype1 = part_type_create();
	part_type_sprite(_ptype1, sp_follow_fluctuation, false, false, false);
	part_type_scale(_ptype1, scale, scale);
	part_type_gravity(_ptype1, 0, 270);
	part_type_orientation(_ptype1, 0, 0, 0, 0, true);
	part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(_ptype1, 1, 1, 1);
	part_type_blend(_ptype1, false);

	var _pemit1 = part_emitter_create(_ps);
	part_emitter_stream(_ps, _pemit1, _ptype1, 10)
	part_emitter_region(_ps, _pemit1, -0.1, 0.1, -0.1, 0.1, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(_ps, _pemit1, _ptype1, 1);
	
	part_system_position(_ps, _x, _y);
	
	return instance_create_depth(0, 0, 0, o_follow_fluctuation, {
		follow_fluctuation : {
				ps : _ps, ptype : _ptype1, pemit : _pemit1,
				dependence_variable_str : _dependence_variable_str, dependence_ratio : _dependence_ratio,
				prev_x : _x,
				prev_y : _y,
			},
			target : _target, targetx : _target.x, targety : _target.y,});

}