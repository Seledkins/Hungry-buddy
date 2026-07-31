particle_system = part_system_create_layer(layer, false, particle_system_asset);
part_system_depth(particle_system, -room_height)
part_system_position(particle_system, x, y);

part_system_info = part_system_get_info(particle_system);


alarm[0] = life_time;