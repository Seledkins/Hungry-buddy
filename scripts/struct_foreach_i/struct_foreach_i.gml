function struct_foreach_i(_struct, _callback) {
    var _keys = variable_struct_get_names(_struct);
    var _count = array_length(_keys);

    for (var i = 0; i < _count; i++) {
        var _key = _keys[i];
        _callback(i, _key, variable_struct_get(_struct, _key));
    }
}