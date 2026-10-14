/// @function struct_unique_against(_struct1, _struct2)
/// @description Возвращает НОВУЮ структуру — копию _struct1,
///              из которой удалены все ключи, присутствующие в _struct2.
///              Исходные структуры НЕ изменяются.
/// @param {Struct} _struct1  Структура-источник (не мутируется)
/// @param {Struct} _struct2  Структура с ключами для исключения (не мутируется)
/// @returns {Struct} Новая структура
function struct_unique_against(_struct1, _struct2) {
    var _result = {};
    var _keys = variable_struct_get_names(_struct1);
    var _len = array_length(_keys);

    for (var i = 0; i < _len; i++) {
        var _k = _keys[i];
        if (!variable_struct_exists(_struct2, _k)) {
            _result[$ _k] = _struct1[$ _k];
        }
    }

    return _result;
}