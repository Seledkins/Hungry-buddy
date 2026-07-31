// _part_system_create_code should return created part system, else this function doesnt work

function create_smart_customizable_part_system(_x, _y, _life_time, _part_system_create_code, _layer = o_play_values_manager.layid_particles, _depth = -1){

	var smart_particle_system = instance_create_layer(_x, _y, _layer, o_smart_customizable_part_system, {
		part_system_create_code : _part_system_create_code,
		life_time : _life_time,
		depth : _depth,
		
	});
	
	return smart_particle_system;

}