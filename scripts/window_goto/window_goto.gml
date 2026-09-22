function window_goto(name){
	with(o_window_manager) {

		if (current_window != undefined) {
			windows[$ current_window].transistion_func();	
		}
		
		windows[$ name].create_func();
		current_window = name;
		
	}
	
	
	
}