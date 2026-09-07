function description_update(desc_inst, _header = undefined, _description = undefined) {

	with(desc_inst) {
		if (_header != undefined) {
			header = _header;
		}
	
		if (_description != undefined) {
			description = _description;	
		}
		
		
	
		previous_image_xscale = max_image_xscale;
		previous_image_yscale = max_image_yscale;
		
		//show_debug_message(max_image_xscale);
		//show_debug_message(previous_image_xscale);
		
		x -= border_origin_distx;
		y -= border_origin_disty;
		
		var previous_arrowx_end = arrowx_end;
		var previous_arrowy_end = arrowy_end;
	
		event_perform(ev_create, 0);
		
		arrowx = arrowx_end;
		arrowy = arrowy_end;
		//show_debug_message(max_image_xscale);
		//show_debug_message(previous_image_xscale);
		
		image_xscale = previous_image_xscale;
		image_yscale = previous_image_yscale;
	
	}

}