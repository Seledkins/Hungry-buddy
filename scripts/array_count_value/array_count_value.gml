/// @function array_count_value(array, value)
/// @param {Array} array    Массив для поиска
/// @param {Any} value      Значение для подсчета
/// @return {Real}          Количество вхождений

function array_count_value(_array, _value) {
    var _count = 0;
    var _size = array_length(_array);
    
    for (var i = 0; i < _size; i++) {
        if (_array[i] == _value) {
            _count++;
        }
    }
    
    return _count;
}