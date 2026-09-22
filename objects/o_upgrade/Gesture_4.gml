if (choosen_cell != noone && outline_color == global.color_dark_purple) {
	
	with(choosen_cell) {
		up_choosen = false;
	}
	
	struct_remove(global.save.upgrades.selected, key);
	save();
	
	choosen_cell = noone;
	outline_color = global.color_black;
	exit;
	
} else {
	instance_create_description(x + sprite_width / 2, y + sprite_height / 2, ui_depth, $"{dec_color(global.color_white)}{string_upper(name)}", fnt_curtsweeper, 1, $"{dec_color(global.color_dark_white)}{description}", fnt_pixeloid, 1, true, 5, sprite_width / 2, true);
	if (choosen_cell == noone) {
		with( o_upgrade_using_cell ) { repaire_to_change = true; }
	}
}


outline_color = global.color_dark_purple;
