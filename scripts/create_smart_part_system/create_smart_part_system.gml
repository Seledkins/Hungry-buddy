function create_smart_part_system(_x, _y, _particle_system_asset, _life_time, _layer = o_play_values_manager.layid_particles, _use_part_type_destroy = false, addition_variables = {}){

	var variables_struct = {
			particle_system_asset : _particle_system_asset,
			life_time : _life_time,
			use_part_type_destroy : _use_part_type_destroy,
			
			};
			
	var obj_struct = struct_merge(variables_struct, addition_variables);

	var smart_particle_system = instance_create_layer(_x, _y, _layer, o_smart_part_system, obj_struct);
	
	return smart_particle_system;

}