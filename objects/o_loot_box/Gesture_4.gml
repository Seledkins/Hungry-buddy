var cost = global.save.loot_box_cost;

if (!focused) {
	focused = true;	
	outline_color = global.color_dark_purple;
	audio_play_sfx_random_pitch(snd_select_upgrade, 0.96, 0.94, 1.05);
	inst_desc = instance_create_description(x, y, ui_depth, "", fnt_curtsweeper, 1, dec_color(global.color_white) + $"Buy an amulet for {cost} mushrooms?", fnt_pixeloid, 1, true, 5, sprite_width / 2, true);
} else {
	focused = false;
	outline_color = c_black;
	
	if (global.save.mushrooms >= cost) {
		global.save.mushrooms -= cost;
		global.save.loot_box_cost += cost_increase;
		
		var _upgrade_info = get_random_upgrade_info();
		global.save.upgrades.collected[$ _upgrade_info.key] = _upgrade_info;
		
		instance_create_depth(x - sprite_get_width(sp_upgrades) / 2, y - 50 - sprite_get_width(sp_upgrades) / 2, ui_depth, o_loot_box_drop, { upgrade_info: _upgrade_info });	
		save();
	} else {
		instance_create_message(x, y, $"{dec_color(global.color_red)}Not enough [tsp_mushroom]",,,,, 0.65);
		audio_play_sfx_random_pitch(snd_negative, 1.2, 0.98, 1.03);
	}
}
