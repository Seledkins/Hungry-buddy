function instance_create_transistion_circle(_x_start, _y_start, _x_end, _y_end, _func, _transistion_speed, _music_fade = false, _depth = ui_depth){
	return instance_create_depth(_x_start, _y_start, _depth, o_transistion_circle, {
		x_start: _x_start,
		y_start: _y_start,
		x_end: _x_end,
		y_end: _y_end,
		func: _func, 
		transistion_speed: _transistion_speed,
		music_fade: _music_fade,
		
	});
}