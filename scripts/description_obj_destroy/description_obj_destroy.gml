function description_obj_destroy(description_obj){
	if (description_obj == all) {
		with(o_description) {
			flag_to_destroy = true;
		}
	} else {
		if (instance_exists(description_obj)) {
			description_obj.flag_to_destroy = true;
		}	
	}
}