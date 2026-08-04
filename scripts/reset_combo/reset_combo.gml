function reset_combo(){
	with(o_combo_manager) {
		combo = 0;
		size_ratio = size_ratio_default;
		alarm[0] = -1;
	}
	
	if (instance_exists(o_hole_parent)) {
		instance_create_message(o_hole_parent.x, o_hole_parent.y, dec_color(global.color_white) + "X0");
	}
}