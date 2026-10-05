if (os_type == os_android) {
	global.save.mushrooms += 1000;	
}

desc_create_func = function() {
	inst_desc = instance_create_description(x, y, ui_depth, "", fnt_curtsweeper, 1, dec_color(global.color_white) + $"Buy an amulet for {global.save.loot_box_cost} mushrooms?", fnt_pixeloid, 1, false, 5, sprite_width / 2, true ,, ev_gui);	
}