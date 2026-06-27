function instance_place_foreach(x_, y_, obj, callback, notme = true){
	
	var place_list = ds_list_create()
	var place_list_size = instance_place_list(x_, y_, obj, place_list, 0)
	
	for(var i = 0; i < place_list_size; i++) {
		
		callback(place_list[| i], i)
		
	}
}