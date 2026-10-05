function instance_create_transistion_rect(_func, _transistion_speed, _depth = ui_depth){
	return instance_create_depth(0, 0, _depth, o_transistion_rect, {
			func: _func, 
			transistion_speed: _transistion_speed,
		
		});
}