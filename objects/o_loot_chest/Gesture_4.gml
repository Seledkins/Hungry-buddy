var cost = global.save.loot_box_cost;

if (!focused) {
	audio_play_sfx_random_pitch(snd_loot_chest_awake, 2, 0.95, 1.05);
	state = "awake"
	change_sprite(sp_loot_chest_awake);
	
	focused = true;	
	outline_color = global.color_dark_purple;
	audio_play_sfx_random_pitch(snd_select_upgrade, 0.96, 0.94, 1.05);
	inst_desc = instance_create_description(x, y, ui_depth, "", fnt_curtsweeper, 1, dec_color(global.color_white) + $"Buy an amulet for {cost} mushrooms?", fnt_pixeloid, 1, false, 5, sprite_width / 2, true);
}

taped = true;