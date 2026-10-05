///@desc _goto_func это функция вида funcction(click_data) {...}. Где click_data это структура с window_name на которую нажали
function add_window(_name, _create_func, _exit_func, _sprite = noone, _goto_func = undefined) {
	if (is_undefined(_goto_func)) {
		_goto_func = function(click_data) {
			if (other.outline_color == c_black) {
				window_goto(click_data.window_name);
			} else {
				other.image_index = 1;
			}
		}
	} 
	
	o_windows_menu.windows[$ _name] = {
		name: _name,
		create_func: _create_func,
		exit_func: _exit_func,
		sprite: _sprite,
		goto_func: _goto_func,
		
	}
	
	array_push(windows_order, _name);
}