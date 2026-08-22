function struct_is_empty(struct){
	return !bool(array_length(struct_get_names(struct)));
}