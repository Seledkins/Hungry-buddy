function destroy_bonus_chest(){
	
	repeat(irandom_range(min_drop_objs_amount ,max_drop_objs_amount)) {
		var obj = drop_objs[irandom(drop_objs_array_length - 1)];
		
		var objs_spd = 2.5
		var objs_friction = 0.1
		
		if (is_bonus(obj)) {
			instance_bonus_create(x, y, obj, objs_spd, objs_friction, random_direction(), true);
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