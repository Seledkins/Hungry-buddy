/// @function ds_list_unique (list)
/// @param {DS_List} list - Исходный список
/// @returns {DS_List} Новый список с уникальными значениями (исходный не меняется)
function ds_list_unique_enemies(insts_list) {
    var _new = ds_list_create();
    var _map = ds_map_create();
    var _size = ds_list_size(insts_list);
    
    for (var i = 0; i < _size; i++) {
        var _val = insts_list[| i];
        
        // ds_map_exists — самая быстрая проверка наличия ключа
        if (!ds_map_exists(_map, _val) && object_is_ancestor(_val.object_index, oe_parent)) {
            ds_list_add(_new, _val);
            ds_map_add(_map, _val, 0);
        }
    }
    
    ds_map_destroy(_map);
    return _new;
}