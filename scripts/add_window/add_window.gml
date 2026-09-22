function add_window(name, _create_func, _transistion_func) {
	o_window_manager.windows[$ name] = {
		create_func: _create_func,
		transistion_func: _transistion_func,
		
	}
}