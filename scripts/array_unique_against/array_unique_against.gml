/// @function array_unique_against(_arr1, _arr2, _key)
/// @param {Array} _arr1   Массив, который нужно уникализировать (будет изменён)
/// @param {Array} _arr2   Массив, с которым сравниваем
/// @param {String} _key   Имя поля структуры для сравнения (например, "id")
/// @returns {Array} Новый массив с уникальными элементами
function array_unique_against(_arr1, _arr2, _key) {
    var _result = [];
    var _len1 = array_length(_arr1);
    var _len2 = array_length(_arr2);

    for (var i = 0; i < _len1; i++) {
        var _item1 = _arr1[i];
        var _key_val1 = _item1[$ _key];
        var _found = false;

        for (var j = 0; j < _len2; j++) {
            var _item2 = _arr2[j];
            if (_item2[$ _key] == _key_val1) {
                _found = true;
                break;
            }
        }

        if (!_found) {
            array_push(_result, _item1);
        }
    }

    return _result;
}