if (choosen_cell != noone) {
	x = lerp(x, choosen_cell.x, lerp_amount);
	y = lerp(y, choosen_cell.y, lerp_amount);
	
	cross_scale = lerp(cross_scale, outline_color == global.color_dark_purple, lerp_amount * 2);
} else if (inst_border != noone) {
	x = lerp(x, inst_border.x, lerp_amount * 2);
	y = lerp(y, inst_border.y, lerp_amount * 2);
	
	if (inst_border.x - x < 0.05) {
		instance_destroy(inst_border);
		inst_border = noone;
	}
	
	cross_scale = lerp(cross_scale, outline_color == global.color_dark_purple, lerp_amount * 2);
}

