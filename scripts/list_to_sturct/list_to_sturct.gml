/// @function list_to_struct(_list)
/// @description Превращает ds_list в структуру вида { "0": value0, "1": value1, ... }
function list_to_struct(_list) {
    var _s = {};
    var _n = ds_list_size(_list);
    for (var i = 0; i < _n; i++) {
        _s[$ string(i)] = _list[| i];
    }
    return _s;
}