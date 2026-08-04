function x_to_guix(_x, gui_width){
	
	var cl = camera_get_view_x(view_camera[0]);
       
    var off_x = _x - cl; // x is the normal x position
       
    // convert to gui
    var off_x_percent = off_x / camera_get_view_width(view_camera[0]);
       
    var gui_x = off_x_percent * gui_width;
	
	return gui_x;
	
}