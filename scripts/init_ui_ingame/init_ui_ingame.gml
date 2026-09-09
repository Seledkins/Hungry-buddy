function init_ui_ingame(){
	instance_create_depth(0, 0, 0, o_bite_button);
	instance_create_depth(0, 0, 0, o_combo_manager);
	instance_create_depth(0, 0, 0, o_health_bar);
	instance_create_depth(0, 0, 0, o_temporary_bonus_manager);
	
	var padding = 10
	instance_create_depth(Camera.view_x + Camera.view_width - sprite_get_width(sp_pause) / 2 - padding, Camera.view_y + sprite_get_height(sp_pause) / 2 + padding, ui_depth, o_button_pause);
	
}