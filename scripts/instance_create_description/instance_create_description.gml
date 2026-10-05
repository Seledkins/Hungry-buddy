function instance_create_description(_x, _y, _depth, _header, _header_font, _header_scale, _description, _description_font, _description_scale, _auto_deleteng, _padding = 5, _offset_to_target = 0, _show_arrow = true,  addition_variables = {}, _draw_ev = ev_gui_begin){
	var variables = {
		header: _header,
		header_font: _header_font,
		header_max_scale: _header_scale,
		
		description: _description,
		description_font: _description_font,
		description_max_scale: _description_scale,
		
		offset_to_target: _offset_to_target,
		padding: _padding,
		show_arrow: _show_arrow,
		auto_deleteng: _auto_deleteng,
		
		draw_ev: _draw_ev,
		
	};
	
	return instance_create_depth(_x, _y, _depth, o_description, struct_merge(variables, addition_variables));
}