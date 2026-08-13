function instance_create_simple_button(_x, _y, _endx, _endy, text_or_sprite, _move_force, _click_func, _color_default = global.color_white, _color_pressed = global.color_green, addition_variables = {}){
	
	var is_text = is_string(text_or_sprite);
	
	var base_config_struct = {
		move_force : _move_force,
		endx : _endx,
		endy : _endy,
		click_func : _click_func,
		color_default : _color_default,
		color_pressed : _color_pressed,
		sprite_index : (!is_text) ? text_or_sprite : sp_nothing1x1,
		text : (is_text) ? text_or_sprite : "",
	};
	
	var config_struct = struct_merge(base_config_struct, addition_variables);
	
	return instance_create_depth(_x, _y, ui_depth, o_button_simple, config_struct);
}