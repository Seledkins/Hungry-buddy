function ds_list_foreach(list, callback){

	for(var i = 0; i < ds_list_size(list); i++) 
		callback(list[| i], i)

}