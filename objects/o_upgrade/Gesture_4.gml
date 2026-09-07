var current_desc = description;

if (is_array(description)) {
	current_desc = description[visual_level];	
}

if (!focused) {
	outline_color = global.color_bright_purple_dark;
	audio_play_sfx_random_pitch(snd_select_upgrade, 0.96, 0.94, 1.05);
	inst_desc = instance_create_description(x, y, ui_depth, upgrade_header_gather_string(), fnt_curtsweeper, 1, $"{dec_color(global.color_dark_white)}{current_desc}", fnt_pixeloid, 1, false, 5, sprite_width / 2, true);
} else if (level < max_level && global.mushrooms >= cost[visual_level] && global.bought_upgrades_amount < global.max_bought_upgrades_amount){
	if (parent.level != 0) {
		
		array_foreach(children, function(child) {
			with(child) {
				if (locker != noone) {
					locker.sprite_index = sp_bubble_upgrade_border_pop;
					create_smart_part_system(x, y, ps_bubble_border_locked, 55, o_upgrade_manager_and_prestige.layid_upgrades,, {depth : -50});
					locker = noone;
				}	
			}
		});
		
		if (level == 0) {
			global.bought_upgrades_amount += bought_upgrades_amount_increse;	
		}
		
		instance_create_message(x, y, $"{dec_color(global.color_white)}+1");
		audio_play_sfx(snd_bought, 1.6, 1 + level * 0.1);
		level++;
		
		global.mushrooms -= cost[visual_level];
		save_values();
		
		visual_level = clamp(level, 0, max_level - 1);
		
		current_desc = description;
		if (is_array(description)) {
			current_desc = description[visual_level];	
		}
		
		description_update(inst_desc, upgrade_header_gather_string(), $"{dec_color(global.color_dark_white)}{current_desc}");
	
		if (key = "") {
			show_error($"В улучшение {name} не указан key", true);	
		} 
	
		if (array_length(upgrade_callbacks) < max_level) {
			show_error($"Заданы не все калбэки у улучшения {key}", true);	
		}
		
		//saving
		struct_set(global.upgrades_tree, key, {
			key : id.key,
			level : id.level,
		});
		upgrades_tree_save();
		
		global.upgrades_callbacks[$ key] = {
					callback : upgrade_callbacks[visual_level],
					key : key,
					
				}
		
		
	
	} else {
		instance_create_message(x, y, $"{dec_color(global.color_red)}Unlock {string_upper(parent.name)} first",,,,, 0.65);
		create_smart_part_system(x, y, ps_bubble_border_locked, 55, o_upgrade_manager_and_prestige.layid_upgrades,, {depth : -50});
		audio_play_sfx_random_pitch(snd_negative, 1.2, 0.98, 1.03);
	}
	
} else {
	if (global.mushrooms < cost[visual_level] && level < max_level) {
		instance_create_message(x, y, $"{dec_color(global.color_red)}Not enough [tsp_mushroom]",,,,, 0.65);
	} else if (level >= max_level) {
		instance_create_message(x, y, $"{dec_color(global.color_white)}Max level",,,,, 0.65);
	} else {
		instance_create_message(x, y, $"{dec_color(global.color_white)}Upgrades limit {global.bought_upgrades_amount}{tdash()}{global.max_bought_upgrades_amount}",,,,, 0.65);
	}
	
	audio_play_sfx_random_pitch(snd_negative, 4, 0.98, 1.03);
}

focused = true;
