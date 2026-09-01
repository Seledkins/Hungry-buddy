function chest_add_drop(_obj, _max_amount){
	array_push(global.chest_drop_arr, {obj : _obj, max_count : _max_amount});
}