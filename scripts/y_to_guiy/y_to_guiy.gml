function y_to_guiy(_y, gui_height){
	
    var ct = camera_get_view_y(view_camera[0]);
       
    var off_y = _y - ct; // y is the normal y position
       
    // convert to gui
    var off_y_percent = off_y / camera_get_view_height(view_camera[0]);
       
    var gui_y = off_y_percent * gui_height;
	
	return gui_y;
}