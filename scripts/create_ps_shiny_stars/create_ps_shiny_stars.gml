function create_ps_shiny_stars(xmin, xmax, ymin, ymax, _x, _y, region_padding, interval_min = 0.5, interval_max = 1){
	
	//ps_shiny_starts
	var ps_shiny_stars = part_system_create_layer(o_play_values_manager.layid_particles, false);
	part_system_draw_order(ps_shiny_stars, true);

	//Emitter
	var ptype_shiny_stars = part_type_create();
	part_type_sprite(ptype_shiny_stars, sp_shiny_star, true, true, false)
	part_type_size(ptype_shiny_stars, 0.7, 1, 0, 0);
	part_type_scale(ptype_shiny_stars, 1, 1);
	part_type_speed(ptype_shiny_stars, 0, 0.1, 0, 0);
	part_type_direction(ptype_shiny_stars, 80, 100, 0, 0);
	part_type_gravity(ptype_shiny_stars, 0, 270);
	part_type_orientation(ptype_shiny_stars, 0, 0, 0, 0, false);
	part_type_colour3(ptype_shiny_stars, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(ptype_shiny_stars, 1, 1, 1);
	part_type_blend(ptype_shiny_stars, false);
	part_type_life(ptype_shiny_stars, 60, 80);

	var pemit_shiny_stars = part_emitter_create(ps_shiny_stars);
	part_emitter_region(ps_shiny_stars, pemit_shiny_stars, xmin + region_padding, xmax - region_padding, ymin + region_padding, ymax - region_padding, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(ps_shiny_stars, pemit_shiny_stars, ptype_shiny_stars, 1);
	part_emitter_delay(ps_shiny_stars, pemit_shiny_stars, 0, 0, time_source_units_frames);
	part_emitter_interval(ps_shiny_stars, pemit_shiny_stars, interval_min, interval_max, time_source_units_seconds);

	part_system_position(ps_shiny_stars, _x, _y);
	part_system_depth(ps_shiny_stars, -room_height);

	return {ps : ps_shiny_stars, ptype : ptype_shiny_stars}

}