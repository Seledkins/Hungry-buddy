/// @function list_to_array(_list)
function list_to_array(_list) {
    var _n = ds_list_size(_list);
    var _arr = array_create(_n);
    for (var i = 0; i < _n; i++) {
        _arr[i] = _list[| i];
    }
    return _arr;
}