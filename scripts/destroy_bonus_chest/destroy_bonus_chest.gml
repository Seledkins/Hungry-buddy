function destroy_bonus_chest(){
	
	//var random_chance = random(total_drop_chances);
	//var created_objs = 0;
	
	//for(var di = 0; di < drop_objs_array_length; di++) {
	//	var current_drop_info = drop_objs[di];
		
	//	if (current_drop_info.chance < random_chance && created_objs < max_drop_objs_amount) {
				
	//	}
	//}
	
	var created_objs = [];
	
	repeat(irandom_range(min_drop_objs_amount, max_drop_objs_amount)) {
		var drop_info = global.chest_drop_arr[irandom(array_length(global.chest_drop_arr) - 1)];
		var obj = drop_info.obj;
		
		if (array_count_value(created_objs, obj) >= drop_info.max_count) {
			continue;
		}
		
		array_push(created_objs, obj);
		
		var objs_spd = 2.5
		var objs_friction = 0.1
		
		if (is_bonus(obj)) {
			instance_create_bonus(x, y, obj, objs_spd, objs_friction, random_direction(), true);
		} else {
			var enemy = instance_enemy_create(x, y, obj);	
		
			with(enemy) {
				speed = objs_spd;
				friction = objs_friction;
				direction = random_direction();
				invincible = true;
				alarm[1] = 5;
			}
		}
	}
	
	audio_play_sfx_random_pitch(snd_bonus_chest_destroy, 1.1, 0.9);
	instance_destroy();
}