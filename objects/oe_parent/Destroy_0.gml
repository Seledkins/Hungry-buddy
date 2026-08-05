if(room == rm_init){
	exit	
}

increase_enemies_count(o_enemy_spawner.spawn_objs_info);

adjust_enemies_amounts();
	
o_play_values_manager.killed_enemies_amount++;

if (random(100) <= 3) {
	instance_bonus_create(x, y, o_bonus_mushroom, random_range(1, 2), random_range(0.05, 0.03), random(359), true);	
}

var combo_pitch_ratio = 0
audio_play_sfx_random(snds_deads_arr, 1, random_range(0.85 + combo_pitch_ratio, 1.15 + combo_pitch_ratio));

var blood_ps_init_func = function() {
		//ps_blood
		var _ps = part_system_create();
		part_system_draw_order(_ps, true);
		
		var width_height_ratio = half_sprite_width * half_sprite_height;

		//Emitter
		var _ptype1 = part_type_create();
		part_type_sprite(_ptype1, sp_blood_part, true, true, false)
		part_type_size(_ptype1, 1, 1.5, 0, 0);
		part_type_scale(_ptype1, 1, 1);
		part_type_speed(_ptype1, 2, 3, -0.01, 0);
		part_type_direction(_ptype1, 60, 120, 0, 0);
		part_type_gravity(_ptype1, 0.12, 270);
		part_type_orientation(_ptype1, 0, 10, 0, 0, true);
		part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
		part_type_alpha3(_ptype1, 1, 1, 1);
		part_type_blend(_ptype1, false);
		part_type_life(_ptype1, 28, 40);

		var _pemit1 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit1, -half_sprite_width, half_sprite_width, -half_sprite_height, half_sprite_height, ps_shape_ellipse, ps_distr_linear);
		part_emitter_burst(_ps, _pemit1, _ptype1, round(0.1 * width_height_ratio));

		part_system_position(_ps, x, y);	
		
		return {ps : _ps, ptype : _ptype1}
	}

create_blood(x, y, sprite_width, sprite_height, blood_ps_init_func)