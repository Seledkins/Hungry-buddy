function description_obj_destroy(description_obj){
	if (instance_exists(description_obj)) {
		description_obj.flag_to_destroy = true;
	}
}