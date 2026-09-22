/// @function spawn_layout(_obj, _count, _center_x, _center_y, _gap, _layer_or_depth, _direction, _justify, _index_var, _setup_func)
/// @description Создаёт объекты в ряд (row) или колонку (column) по центру
/// @param {Object} _obj - Объект для создания
/// @param {Real} _count - Количество объектов
/// @param {Real} _center_x - Центр X
/// @param {Real} _center_y - Центр Y
/// @param {Real} _gap - Расстояние между объектами
/// @param {String|Id.Layer|Real} _layer_or_depth - Слой (имя/ID) или depth
/// @param {String} _direction - "row" или "column"
/// @param {String} _justify - "center", "start", "end"
/// @param {String} _index_var - Имя переменной для хранения номера (по умолчанию "spawn_index")
/// @param {Function} _setup_func - function(inst, index) для настройки (опционально)
/// @return {Array} - Массив созданных объектов
function spawn_layout(_obj, _count, _center_x, _center_y, _gap = 20, _layer_or_depth = "Instances", _direction = "row", _justify = "center", _index_var = "spawn_index", _setup_func = undefined) {
    var _instances = [];
    if (_count <= 0) return _instances;
    
    // === ОПРЕДЕЛЯЕМ СЛОЙ ИЛИ DEPTH ===
    var _use_layer = false;
    var _layer_id = -1;
    var _depth = 0;
    
    if (is_string(_layer_or_depth)) {
        _use_layer = true;
        _layer_id = layer_get_id(_layer_or_depth);
        if (_layer_id == -1) {
            show_debug_message("[ERROR] Layer not found: " + _layer_or_depth);
            return _instances;
        }
    } else if (is_real(_layer_or_depth)) {
        _depth = _layer_or_depth;
    } else {
        _use_layer = true;
        _layer_id = _layer_or_depth;
    }
    
    // === ШИРИНА/ВЫСОТА СПРАЙТА ===
    var _spr = object_get_sprite(_obj);
    var _spr_width = 0;
    var _spr_height = 0;
    if (_spr != -1) {
        _spr_width = sprite_get_width(_spr);
        _spr_height = sprite_get_height(_spr);
    }
    
    // === РАСЧЁТ ПОЗИЦИЙ ===
    var _is_row = (_direction == "row");
    var _item_size = _is_row ? _spr_width : _spr_height;
    var _total_size = _item_size * _count + _gap * (_count - 1);
    
    var _start_pos = 0;
    switch (_justify) {
        case "center": _start_pos = -_total_size * 0.5; break;
        case "start":  _start_pos = 0; break;
        case "end":    _start_pos = -_total_size; break;
    }
    
    // === СОЗДАНИЕ ===
    for (var i = 0; i < _count; i++) {
        var _offset = _start_pos + i * (_item_size + _gap) + _item_size * 0.5;
        
        var _x, _y;
        if (_is_row) {
            _x = _center_x + _offset;
            _y = _center_y;
        } else {
            _x = _center_x;
            _y = _center_y + _offset;
        }
        
        // Создаём
        var _inst;
        if (_use_layer && _layer_id != -1) {
            _inst = instance_create_layer(_x, _y, _layer_id, _obj);
        } else {
            _inst = instance_create_depth(_x, _y, _depth, _obj);
        }
        
        // === ЗАПИСЫВАЕМ ПОРЯДКОВЫЙ НОМЕР ===
        _inst[$ _index_var] = i;
        
        // Настройка
        if (is_method(_setup_func)) {
            _setup_func(_inst, i);
        }
        
        array_push(_instances, _inst);
    }
    
    return _instances;
}