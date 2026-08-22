/// @function struct_set_by_key(source, search_key, set_key, set_value, [recursive_array])
/// @param {Any} source          Структура или массив для поиска
/// @param {String} search_key   Ключ для поиска структуры
/// @param {String} set_key      Ключ, который нужно установить
/// @param {Any} set_value       Значение для установки
/// @param {Bool} recursive_array Включать ли перебор массивов (по умолчанию true)
/// @return {Array}              Массив структур, в которых было установлено значение

/*function upgrade_parent_set_children(upgrades_info, parent, child_key_name, child_info, _recursive_array = true) {
    var _modified = [];
    
    // Проверка: должен быть структурой или массивом
    if (!is_struct(upgrades_info) && !is_array(upgrades_info)) {
        return _modified;
    }
    
    // Получаем все ключи
    var _keys = variable_struct_get_names(upgrades_info);
    var _size = array_length(_keys);
    
    for (var i = 0; i < _size; i++) {
        var _key = _keys[i];
        var _value = upgrades_info[$ _key];
        
        // Если ключ совпадает с искомым - устанавливаем значение
        if (_key == parent) {
            upgrades_info[$ parent].children[$ child_key_name] = child_info;
            array_push(_modified, upgrades_info);
        }
        
        // Если значение - структура или массив - рекурсивно ищем в нем
        if (is_struct(_value) || (is_array(_value) && _recursive_array)) {
            var _sub_results = struct_set_by_key(_value, parent, child_key_name, child_info, _recursive_array);
            array_copy(_modified, array_length(_modified), _sub_results, 0, array_length(_sub_results));
        }
    }
    
    return _modified;
}*/

function upgrade_parent_set_children(upgrades_info, parent, child_key_name, child_info) {

    
    // Получаем все ключи
    var _keys = variable_struct_get_names(upgrades_info);
    var _size = array_length(_keys);
    
    for (var i = 0; i < _size; i++) {
        var upg_info = _keys[i];
        var children = upg_info.children;
        
        // Если ключ совпадает с искомым - устанавливаем значение
        
        
        // Если значение - структура или массив - рекурсивно ищем в нем
        if (is_struct(_value)) {
            var _sub_results = struct_set_by_key(_value, parent, child_key_name, child_info);
        }
    }
    
}