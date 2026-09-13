/// @function ref_to_string(_ref)
/// @param {Any} _ref - Ссылка (struct, array, method и т.д.)
/// @return {String} - Читаемое представление
function ref_to_string(_ref) {
    if (is_struct(_ref)) {
        return "struct@" + string(_ref);
    }
    if (is_array(_ref)) {
        return "array[" + string(array_length(_ref)) + "]@" + string(_ref);
    }
    if (is_method(_ref)) {
        return "method@" + string(_ref);
    }
    if (is_undefined(_ref)) {
        return "undefined";
    }
    if (is_string(_ref)) {
        return "\"" + _ref + "\"";
    }
    if (is_real(_ref)) {
        return string(_ref);
    }
    if (is_bool(_ref)) {
        return _ref ? "true" : "false";
    }
    return string(_ref);
}