// life alarm starts
event_inherited();


//create_skull_smoke_ps_system(o_play_values_manager.layid_particles, shadow_width / 6);

//ps_skull_smoke = part_system_create_layer(o_play_values_manager.layid_projectiles, false, ParticleSystem2)

//part_system_position(ps_skull_smoke, x, y);

create_fluctuation(x, y, radius / 40, radius / 20, 1, radius / 400);

//take_damage_circle(x, y, radius, target, damage);

collision_circle_foreach(x, y, radius, target, false, false, false, function(inst) {
	
	show_debug_message(inst.object_index);
	
	if (is_bonus(inst)) {
		destroy_bonus(inst, noone);
		
	} else if (is_creature(inst)) {
		take_damage(inst, damage);	
	}
})

image_speed = 1;