function debug_struct(_struct, _name = "struct", _indent = 0, _skip_header = false) {
    if (!is_struct(_struct)) {
        show_debug_message("[DEBUG] " + _name + " is not a struct!");
        return;
    }
    
    var _pad = "";
    for (var i = 0; i < _indent; i++) _pad += "  ";
    
    if (!_skip_header) {
        if (_indent == 0) {
            show_debug_message("=== " + _name + " ===");
        } else {
            show_debug_message(_pad + _name + ":");
        }
    }
    
    var _keys = struct_get_names(_struct);
    
    for (var i = 0; i < array_length(_keys); i++) {
        var _key = _keys[i];
        var _value = _struct[$ _key];
        var _type = typeof(_value);
        var _line = _pad + "  " + _key + ": ";
        
        switch (_type) {
            case "number":
                if (floor(_value) == _value) {
                    _line += string(_value);
                } else {
                    _line += string_format(_value, 0, 4);
                }
                show_debug_message(_line);
                break;
                
            case "string":
                _line += "\"" + _value + "\"";
                show_debug_message(_line);
                break;
                
            case "bool":
                _line += _value ? "true" : "false";
                show_debug_message(_line);
                break;
                
            case "array":
                _line += "Array[" + string(array_length(_value)) + "]";
                show_debug_message(_line);
                _debug_array(_value, _indent + 1);
                break;
                
            case "struct":
                show_debug_message(_line);
                debug_struct(_value, _key, _indent + 1, true);
                break;
                
            case "method":
                _line += "Method()";
                show_debug_message(_line);
                break;
                
            default:
                _line += ref_to_string(_value);
                show_debug_message(_line);
                break;
        }
    }
    
    if (_indent == 0 && !_skip_header) {
        show_debug_message("=== end " + _name + " ===");
    }
}


/// @function _debug_array(_arr, _indent)
function _debug_array(_arr, _indent) {
    var _pad = "";
    for (var i = 0; i < _indent; i++) _pad += "  ";
    
    for (var i = 0; i < array_length(_arr); i++) {
        var _elem = _arr[i];
        var _type = typeof(_elem);
        var _line = _pad + "  [" + string(i) + "]: ";
        
        switch (_type) {
            case "number":
                if (floor(_elem) == _elem) {
                    _line += string(_elem);
                } else {
                    _line += string_format(_elem, 0, 4);
                }
                show_debug_message(_line);
                break;
                
            case "string":
                _line += "\"" + _elem + "\"";
                show_debug_message(_line);
                break;
                
            case "bool":
                _line += _elem ? "true" : "false";
                show_debug_message(_line);
                break;
                
            case "array":
                _line += "Array[" + string(array_length(_elem)) + "]";
                show_debug_message(_line);
                _debug_array(_elem, _indent + 1);
                break;
                
            case "struct":
                show_debug_message(_line);
                debug_struct(_elem, "struct", _indent + 1, true);
                break;
                
            case "method":
                _line += "Method()";
                show_debug_message(_line);
                break;
                
            default:
                _line += ref_to_string(_elem);
                show_debug_message(_line);
                break;
        }
    }
}