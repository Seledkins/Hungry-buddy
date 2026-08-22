if (!focused) {
	inst_desc = instance_create_description(x, y, ui_depth, upgrade_header_gather_string(), fnt_curtsweeper, 1, $"{dec_color(global.color_dark_white)}lorem lorem lorem", fnt_spielarcade, 1, false, 5, sprite_width / 2, true);
} else if (level < max_level){
	instance_create_message(x, y, $"{dec_color(global.color_white)}+1");
	level++;
	inst_desc.header = upgrade_header_gather_string();
	
	if (key = "") {
		show_error($"В улучшение {name} не указан key", true);	
	} 
	
	//saving
	struct_set(global.upgrades_tree, key, {
		key : id.key,
		level : id.level,
	});
	
	upgrades_tree_save();
	
} else {
	instance_create_message(x, y, $"{dec_color(global.color_white)}max level");	
}

focused = true;
