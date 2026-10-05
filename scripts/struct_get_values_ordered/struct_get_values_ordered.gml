/// @func struct_get_values_ordered(_struct, _key_order)
/// @param {Struct} _struct       Структура
/// @param {Array} _key_order     Массив ключей в нужном порядке
/// @returns {Array}
function struct_get_values_ordered(_struct, _key_order) {
    var _count = array_length(_key_order);
    var _values = array_create(_count);

    for (var i = 0; i < _count; i++) {
        var _key = _key_order[i];
        _values[i] = variable_struct_exists(_struct, _key)
            ? variable_struct_get(_struct, _key)
            : undefined;
    }
    return _values;
}