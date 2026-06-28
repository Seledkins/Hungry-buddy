function collision_rectangle_foreach(x1, y1, x2, y2, obj, notme, prec, ordered, callback){
	
	var rect_list = ds_list_create()
	var rect_list_size = collision_rectangle_list(x1, y1, x2, y2, obj, prec, notme, rect_list, ordered)
	
	for(var i = 0; i < rect_list_size; i++) {
		
		callback(rect_list[| i], i)
		
		
	}
	
	return rect_list_size
	
}