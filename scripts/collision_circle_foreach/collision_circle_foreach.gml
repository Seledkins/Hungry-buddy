function collision_circle_foreach(x1, y1, r, obj, notme, prec, ordered, callback){
	
	var circle_list = ds_list_create()
	var circle_list_size = collision_circle_list(x1, y1, r, obj, prec, notme, circle_list, ordered)
	
	for(var i = 0; i < circle_list_size; i++) {
		
		callback(circle_list[| i], i)
		
	}
	
	return circle_list_size
	
}