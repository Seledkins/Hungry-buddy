/// @function struct_reduce(_struct, _func, _init)
/// @param {Struct} _struct   Структура для обхода
/// @param {Function} _func   function(_acc, _key, _value) -> new_acc
/// @param {Any} _init        Начальное значение аккумулятора
/// @returns {Any} Итоговое значение аккумулятора
function struct_reduce(_struct, _func, _init) {
    var _acc = _init;
    var _keys = variable_struct_get_names(_struct);
    var _len = array_length(_keys);

    for (var i = 0; i < _len; i++) {
        var _key = _keys[i];
        var _value = _struct[$ _key];
        _acc = _func(_acc, _key, _value);
    }

    return _acc;
}