function instance_create_message(_x, _y, _text, _max_size = 1, _speed = 1, _friction = 0.008, _formating = "", _alpha_change_ratio = 1, _font = fnt_curtsweeper, _direction = 90){
	instance_create_depth(x, y, -room_height, o_message, {
		x : _x, 
		y : _y,
		max_size : _max_size,
		text : _text,
		font : _font,
		formating : _formating,
		alpha_change_ratio : _alpha_change_ratio,
		speed : _speed,
		friction : _friction,
		direction : _direction,
		
	})
}