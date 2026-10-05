var current_save = global.save;

switch (state) {
	case "normal": 
		if (!focused) {
			state = "fall asleep"
			audio_play_sfx_random_pitch(snd_loot_chest_fall_asleep, 2, 0.95, 1.05);
			sprite_index = sp_loot_chest_awake;
			image_index = sprite_get_number(sp_loot_chest_awake) - 1;
			break
		}
		
		if (taped) {
			if (current_save.mushrooms >= current_save.loot_box_cost) {
				state = "opening";
				description_obj_destroy(all);
				sprite_index = sp_loot_chest_opening;
				image_index = 0.01;
				audio_play_sfx_random_pitch(snd_loot_chest_open, 2.5, 0.98, 1.03, 1000);
			} else {
				instance_create_message(x, y, $"{dec_color(global.color_red)}Not enough [tsp_mushroom]",,,,, 0.65 ,,, ev_gui_end);
				audio_play_sfx_random([snd_loot_chest_nope, snd_loot_chest_nope1], 0.88, random_range(0.95, 1.05));
				audio_play_sfx_random_pitch(snd_negative, 1.2, 0.98, 1.03);
			}
		}
	break
	
	case "opening": 
		if (image_index > image_number - 1 && image_speed != 0) {
			global.save.mushrooms -= current_save.loot_box_cost;
			global.save.loot_box_cost += cost_increase;
		
			var _upgrade_info = get_random_upgrade_info();
			global.save.upgrades.collected[$ _upgrade_info.key] = _upgrade_info;
		
			instance_create_depth(x, y + 20, ui_depth, o_loot_chest_drop, { upgrade_info: _upgrade_info });	
			save();	
			
			image_speed = 0;
		}
		
		
	break
	
	case "awake": 
		image_speed = 1;
		if (focused) {
			if (animation_end()) {
				state = "normal";
				change_sprite(sp_loot_chest_normal);
			}
		} else {
			state = "fall asleep";
			audio_play_sfx_random_pitch(snd_loot_chest_fall_asleep, 2, 0.95, 1.05);
		}
		
	break
	
	case "fall asleep":
		if (focused) {
			state = "awake";
			break
		}
	
		image_speed = -1;
		if (image_index < 0.5) {
			image_speed = 1;
			state = "sleep";
			change_sprite(sp_loot_chest_sleep);
		}
		
	break
	
	case "close":
		image_speed = -1;
		if (image_index < 0.5) {
			state = "normal";
			sprite_index = sp_loot_chest_normal;
			image_index = 0;
		}
	break	
}

taped = false;