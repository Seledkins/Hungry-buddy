function struct_merge(struct1, struct2) {
	
    var _result = variable_clone(struct1, 1); 
    var _keys = variable_struct_get_names(struct2);
	
    for (var i = 0; i < array_length(_keys); i++) {
        var _key = _keys[i];
		
        _result[$ _key] = variable_clone(struct2[$ _key], 1);
    }
	
    return _result;
}