/// @func array_push_front(_array, _value)
/// @param {Array} _array   Массив (передаётся по ссылке)
/// @param {Any} _value     Значение для вставки в начало
/// @description Вставляет значение в начало массива (индекс 0)
function array_push_front(_array, _value) {
    var _len = array_length(_array);

    // Сдвигаем все элементы на 1 вправо (с конца, чтобы не перезаписать)
    for (var i = _len; i > 0; i--) {
        _array[i] = _array[i - 1];
    }

    // Ставим новое значение в начало
    _array[0] = _value;
}