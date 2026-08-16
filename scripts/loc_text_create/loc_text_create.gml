function loc_text_create(){
	
	var result_array = [];
	
	for(var lt = 0; lt < argument_count; lt++) {
		array_push(result_array, argument[lt]);
	}
	
	return result_array;
	
}