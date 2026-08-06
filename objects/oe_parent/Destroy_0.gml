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
	
var ps_config = blood_ps_config(half_sprite_width, half_sprite_height, x, y)
create_blood(x, y, sprite_width, sprite_height, ps_config);

create_fluctuation(x, y, sprite_width_main / 50, sprite_width_main / 7, 2, sprite_width_main / 1000);