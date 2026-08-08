if(room == rm_init){
	exit	
}

increase_enemies_count(o_enemy_spawner.spawn_objs_info);

adjust_enemies_amounts();
	
o_play_values_manager.killed_enemies_amount++;

if (random(100) <= drop_obj_chance) {
	repeat (irandom_range(min_drop_objs_amount ,max_drop_objs_amount)) {
		var obj = drop_objs[irandom(drop_objs_amount - 1)];
		
		var objs_spd = 2.5
		var objs_friction = 0.1
		
		instance_bonus_create(x, y, obj, objs_spd, objs_friction, random_direction(), true);

	}
}

var combo_pitch_ratio = 0
audio_play_sfx_random(snds_deads_arr, 1, random_range(0.85 + combo_pitch_ratio, 1.15 + combo_pitch_ratio));
	
create_blood_default();

create_fluctuation(x, y, sprite_width_main / 45, sprite_width_main / 7, 3, sprite_width_main / 1000);