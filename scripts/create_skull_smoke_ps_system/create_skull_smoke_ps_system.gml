function create_skull_smoke_ps_system(_layer, emitter_region_size){
	//ps_explosion
	ps_skull_smoke = part_system_create_layer(_layer, false);
	part_system_draw_order(ps_skull_smoke, true);

	//Emitter
	ptype_skull_smoke = part_type_create();
	part_type_sprite(ptype_skull_smoke, sp_purple_skull_smoke_part, true, true, false)
	part_type_size(ptype_skull_smoke, 1, 1, 0, 0);
	part_type_scale(ptype_skull_smoke, 1, 1);
	part_type_speed(ptype_skull_smoke, 0.6, 1.2, -0.012, 0);
	part_type_direction(ptype_skull_smoke, 85, 95, 0, 50);
	part_type_gravity(ptype_skull_smoke, 0, 270);
	part_type_orientation(ptype_skull_smoke, 0, 0, 0, 0, false);
	part_type_colour3(ptype_skull_smoke, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(ptype_skull_smoke, 1, 1, 1);
	part_type_blend(ptype_skull_smoke, false);
	part_type_life(ptype_skull_smoke, 65, 75);

	pemit_skull_smoke = part_emitter_create(ps_skull_smoke);
	part_emitter_region(ps_skull_smoke, pemit_skull_smoke, -emitter_region_size, emitter_region_size, -emitter_region_size, emitter_region_size, ps_shape_rectangle, ps_distr_invgaussian);
	part_emitter_burst(ps_skull_smoke, pemit_skull_smoke, ptype_skull_smoke, 10);
	
	
	
	
}