/// @func struct_get_values(_struct)
/// @param {Struct} _struct  Структура
/// @returns {Array}         Массив значений
/// @description Возвращает массив всех значений структуры
function struct_get_values(_struct) {
    var _keys = variable_struct_get_names(_struct);
    var _count = array_length(_keys);
    var _values = array_create(_count);

    for (var i = 0; i < _count; i++) {
        _values[i] = variable_struct_get(_struct, _keys[i]);
    }

    return _values;
}