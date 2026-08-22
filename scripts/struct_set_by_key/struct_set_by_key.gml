/// @function struct_set_by_key(source, search_key, set_key, set_value, [recursive_array])
/// @param {Any} source          Структура или массив для поиска
/// @param {String} search_key   Ключ для поиска структуры
/// @param {String} set_key      Ключ, который нужно установить
/// @param {Any} set_value       Значение для установки
/// @param {Bool} recursive_array Включать ли перебор массивов (по умолчанию true)
/// @return {Array}              Массив структур, в которых было установлено значение

function struct_set_by_key(_source, _search_key, _set_key, _set_value, _recursive_array = true) {
    var _modified = [];
    
    // Проверка: должен быть структурой или массивом
    if (!is_struct(_source) && !is_array(_source)) {
        return _modified;
    }
    
    // Получаем все ключи
    var _keys = variable_struct_get_names(_source);
    var _size = array_length(_keys);
    
    for (var i = 0; i < _size; i++) {
        var _key = _keys[i];
        var _value = _source[$ _key];
        
        // Если ключ совпадает с искомым - устанавливаем значение
        if (_key == _search_key) {
            _source[$ _set_key] = _set_value;
            array_push(_modified, _source);
        }
        
        // Если значение - структура или массив - рекурсивно ищем в нем
        if (is_struct(_value) || (is_array(_value) && _recursive_array)) {
            var _sub_results = struct_set_by_key(_value, _search_key, _set_key, _set_value, _recursive_array);
            array_copy(_modified, array_length(_modified), _sub_results, 0, array_length(_sub_results));
        }
    }
    
    return _modified;
}