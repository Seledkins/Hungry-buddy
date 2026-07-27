/// @function array_merge_deep(...arrays)
/// @param {...Array} arrays - Массивы для объединения (глубокое копирование)
/// @returns {Array} - Новый массив с глубокими копиями всех элементов

function array_merge_deep() {
    var result = [];
    var total_size = 0;
    var i, j;
    
    // Считаем общий размер
    for (i = 0; i < argument_count; i++) {
        var arr = argument[i];
        if (is_array(arr)) {
            total_size += array_length(arr);
        }
    }
    
    // Создаём результирующий массив
    result = array_create(total_size);
    var offset = 0;
    
    // Копируем все массивы с глубоким копированием
    for (i = 0; i < argument_count; i++) {
        var arr = argument[i];
        if (!is_array(arr)) continue;
        
        var size = array_length(arr);
        for (j = 0; j < size; j++) {
            result[offset + j] = _deep_clone(arr[j]);
        }
        offset += size;
    }
    
    return result;
}

/// @function _deep_clone(value)
/// @param {Any} value - Значение для копирования
/// @returns {Any} - Глубокая копия значения

function _deep_clone(value) {
    // Если это массив - рекурсивно копируем
    if (is_array(value)) {
        var new_array = [];
        for (var i = 0; i < array_length(value); i++) {
            new_array[i] = _deep_clone(value[i]);
        }
        return new_array;
    }
    
    // Если это структура - рекурсивно копируем
    if (is_struct(value)) {
        var new_struct = {};
        var keys = variable_struct_get_names(value);
        for (var i = 0; i < array_length(keys); i++) {
            var key = keys[i];
            new_struct[$ key] = _deep_clone(value[$ key]);
        }
        return new_struct;
    }
    
    // Если это метод/функция - возвращаем как есть
    if (is_method(value)) {
        return value;
    }
    
    // Для всех остальных типов (числа, строки, bool, etc.)
    return value;
}