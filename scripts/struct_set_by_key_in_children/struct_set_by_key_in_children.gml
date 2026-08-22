/// @function struct_set_by_key_in_children(source, search_key, new_child_data)
/// @param {Struct} source          Корневая структура
/// @param {String} search_key      Ключ для поиска (поле "key")
/// @param {Struct} new_child_data  Данные нового узла
/// @return {Bool}                  true - успешно, false - не найдено

function struct_set_by_key_in_children(_source, _search_key, _new_child_data) {
    // Проверяем, что это структура
    if (!is_struct(_source)) {
        show_debug_message("Ошибка: _source не является структурой");
        return false;
    }
    
    // Проверяем текущий узел
    if (variable_struct_exists(_source, "key")) {
        var _current_key = _source[$ "key"];
        if (_current_key == _search_key) {
            // Нашли нужный узел!
            show_debug_message("Найден узел: " + _search_key);
            
            // Создаем children если нет
            if (!variable_struct_exists(_source, "children")) {
                _source[$ "children"] = {};
            }
            
            var _children = _source[$ "children"];
            var _new_key = _new_child_data[$ "key"];
            
            // Проверяем уникальность ключа
            if (variable_struct_exists(_children, _new_key)) {
                show_debug_message("Ошибка: ключ '" + _new_key + "' уже существует");
                return false;
            }
            
            // Добавляем новый узел
            _children[$ _new_key] = _new_child_data;
            show_debug_message("Добавлен узел: " + _new_key + " в родитель: " + _search_key);
            return true;
        }
    }
    
    // Ищем в children
    if (variable_struct_exists(_source, "children")) {
        var _children = _source[$ "children"];
        var _keys = struct_get_names(_children);
        
        for (var i = 0; i < array_length(_keys); i++) {
            var _child_key = _keys[i];
            var _child = _children[$ _child_key];
            
            // Рекурсивно ищем
            if (struct_set_by_key_in_children(_child, _search_key, _new_child_data)) {
                return true;
            }
        }
    }
    
    return false;
}