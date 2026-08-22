function struct_find(_source, _search_key, _recursive_array = true) {
    // Проверка: должен быть структурой или массивом
    if (!is_struct(_source) && !is_array(_source)) {
        return undefined;
    }
    
    // Получаем все ключи
    var _keys = variable_struct_get_names(_source);
    var _size = array_length(_keys);
    
    for (var i = 0; i < _size; i++) {
        var _key = _keys[i];
        var _value = _source[$ _key];
        
        // Если ключ совпадает с искомым - возвращаем структуру
        if (_key == _search_key) {
            return variable_clone(_source);
        }
        
        // Если значение - структура или массив - рекурсивно ищем в нем
        if (is_struct(_value) || (is_array(_value) && _recursive_array)) {
            var _result = struct_find(_value, _search_key, _recursive_array);
            if (_result != undefined) {
                return _result;
            }
        }
    }
    
    // Если ничего не найдено
    return undefined;
}