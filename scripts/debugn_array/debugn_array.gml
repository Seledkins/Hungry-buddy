/// @function debug_array(_array, _name, _indent)
/// @param {Array} _array - Массив для вывода
/// @param {String} _name - Имя массива (для заголовка)
/// @param {Real} _indent - Уровень отступа (обычно 0)
function debug_array(_array, _name = "array", _indent = 0) {
    // Проверка на массив
    if (!is_array(_array)) {
        show_debug_message("[DEBUG] " + _name + " is not an array!");
        return;
    }
    
    // Отступы
    var _pad = "";
    for (var i = 0; i < _indent; i++) _pad += "  ";
    
    // Заголовок
    if (_indent == 0) {
        show_debug_message("=== " + _name + " (Array[" + string(array_length(_array)) + "]) ===");
    } else {
        show_debug_message(_pad + _name + ":");
    }
    
    // Проходим по всем элементам
    for (var i = 0; i < array_length(_array); i++) {
        var _elem = _array[i];
        var _type = typeof(_elem);
        var _line = "\n";
        
        switch (_type) {
            case "number":
                if (floor(_elem) == _elem) {
                    _line += string(_elem);
                } else {
                    _line += string_format(_elem, 0, 4);
                }
                
                break;
                
            case "string":
                _line += "\"" + _elem + "\"";
                
                break;
                
            case "bool":
                _line += _elem ? "true" : "false";
                
                break;
                
            case "array":
                _line += "Array[" + string(array_length(_elem)) + "]";
                
                debug_array(_elem, _name + "[" + string(i) + "]", _indent + 1);
                break;
                
            case "struct":
                
                debug_struct(_elem, _name + "[" + string(i) + "]", _indent + 1);
                break;
                
            case "method":
                _line += "Method()";
                
                break;
                
            default:
                _line += ref_to_string(_elem);
                
                break;
        }
    }
    
    if (_indent == 0) {
        show_debug_message("=== end " + _name + " ===");
    }
}