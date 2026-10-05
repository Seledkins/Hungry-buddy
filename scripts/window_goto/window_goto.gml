function window_goto(name){
	var window = windows[$ name];
	
	with(o_windows_menu) {

		if (current_window != undefined) {
			windows[$ current_window].exit_func();	
		}
		
		window.create_func();
		current_window = name;
		
	}
	
	
	if (window.sprite == noone) {
		exit;
	}
	
	with(o_button_simple) {
		self.outline_color = c_black;	
		image_index = 0;
		
		if (window.sprite == self.sprite_index) {
			image_index = 1;
			self.outline_color = global.color_bright_green;	
		}
	}
	
	
}