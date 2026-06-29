draw_set_halign(fa_center)
if(instance_exists(o_hole_parent)){
	draw_text_transformed(global.gui_width / 2, 20, $"Points: {points} hp: {o_hole_parent.hp}", 1, 1, 0)
}
draw_set_halign(fa_left)