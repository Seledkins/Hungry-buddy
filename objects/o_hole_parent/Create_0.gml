if (global.controls_type == "mobile") {
	controls_func = default_hole_mobile_controls;
}
else { 
	controls_func = default_hole_pc_controls;
	if (global.developer_mode) {
		set_invincible(id, true, -1);
	}
}

