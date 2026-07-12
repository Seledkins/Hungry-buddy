draw_set_halign(fa_center);

if(instance_exists(o_hole_parent)){
	draw_text_transformed(global.gui_width / 2, 20, $"Points: {points} Mushrooms: {eaten_mushrooms}", 1, 1, 0);
	
	var percent_hp = o_hole_parent.hp / o_hole_parent.max_hp * 100;
	
	draw_healthbar(20, 20, 100, 30, percent_hp, c_black, global.color_red, global.color_red, 0, true, false);
}

draw_set_halign(fa_left);