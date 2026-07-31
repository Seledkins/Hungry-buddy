function create_ps_sprite(sprite_parts, _x, _y, _sprite_width, _sprite_height, count, life_min, life_max, _speed, _increment){

	var half_sprite_width = _sprite_width / 2;
	var half_sprite_height = _sprite_height / 2;

	var ps = part_system_create();
	part_system_draw_order(ps, true);

	var ptype = part_type_create();
	part_type_sprite(ptype, sprite_parts, false, true, true)
	part_type_size(ptype, 1, 1, 0, 0);
	part_type_scale(ptype, 1, 1);
	part_type_speed(ptype, _speed, _speed, _increment, 0);
	part_type_direction(ptype, 0, 359, 0, 0);
	part_type_gravity(ptype, 0, 270);
	part_type_orientation(ptype, 0, 0, 0, 0, true);
	part_type_colour3(ptype, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(ptype, 1, 1, 0);
	part_type_blend(ptype, false);
	part_type_life(ptype, life_min, life_max);

	var pemit = part_emitter_create(ps);
	part_emitter_region(ps, pemit, -half_sprite_width, half_sprite_width, -half_sprite_height, half_sprite_height, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, pemit, ptype, count);

	part_system_position(ps, _x, _y);
	
	return ps;


}